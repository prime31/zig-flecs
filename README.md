## Flecs Zig Bindings

Currently quite messy and in progress zigification of the Flecs API.

#### TODO:
- make a `Query` struct and interator to match the `Filter` one
- make three ways to iterate for Filter/Query:
    1. iterator: iterates just the entities and requires manually fetching components (done)
    2. entityIterator: iterates each entity (done)
    3. tableIterator: iterates each archetype and provides component arrays for each. Not sure the best way to handle this yet. Would need to pass into the method the relevant term arrays and some kind of iterator object to use for the loop and for optional lookups and access to the World. (https://github.com/SanderMertens/flecs/blob/master/docs/Queries.md#iter-c)
- figure out a good, clean way to handle Systems ergonomically. Start with a simple ecs_iter_t wrapper since that is always passed to systems


#### TableIterator Musings and Potential API
```zig
var filter = ...
var table_iter = filter.tableIterator(struct { pos: *Position, vel: *const Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });

// inner iter.data is derived from the struct passed into the TableIterator
// const Data = struct {
//      pos: [*]Position,
//      vel: [*]const Velocity,
//      acc: ?[*]Acceleration,
//      player: ?[*]Player,
//      enemy: ?[*]Enemy,
// }

// while loops through the tables. Each iteration the `iter` returned has the arrays from the struct passed to the filter
while (table_iter.next()) |iter| {
    // use this world for any mutation. TODO: do filters have a stage? If so we need to put the correct world in the iter
    var world = table_iter.world;

    // inner loop loops through the entities in the table
    var i: usize = 0;
    while (i < iter.count) : (i += 1) {
        iter.data.pos[i] += iter.data.vel[i];
        if (iter.data.acc) |acc| {
            iter.data.pos[i] *= acc[i];
        }
    }
}

// an each variant might get ugly because the Type for the callback has to be:
// TableIterator(struct { pos: *Position, vel: *const Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy })
filter.tableIteratorEach(struct { pos: *Position, vel: *const Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }, each);

// which results in a pretty ugly mess
fn each(iter: TableIterator(struct { pos: *Position, vel: *const Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy })) void {}

// it can be cleaned up a bit but its still a bit unruly
const TI = TableIterator(struct { pos: *Position, vel: *const Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
filter.tableIteratorEach(TI, each);

fn each(iter: TI) void {}
```



### Terms
Terms are used to iterate a single component type.

```zig
var term = flecs.Term(Position).init(world);
defer term.deinit();

// iterate with a standard iterator
var term_iter = term.iterator();
while (term_iter.next()) |pos| {
    std.debug.print("pos: {d}, entity: {d}\n", .{ pos, term_iter.entity() });
}

// iterate with a function called for each entity that has the component
term.each(eachTerm);

fn eachTerm(entity: flecs.EntityId, pos: *Position) void {
    std.debug.print("pos: {d}, entity: {d}\n", .{ pos, entity });
}
```


### Filter
A filter is a list of terms that are matched against entities. Filters are cheap to create and match entities as iteration takes place. This makes them a good fit for scenarios where an application doesn't know in advance what it has to query for, a typical use case for this being runtime tags. Another advantage of filters is that while they can be reused, their cheap creation time doesn't require it.

```zig
// QueryBuilder is used to define what you want to filter for
var builder = flecs.QueryBuilder.init(world)
    .withReadonly(Position)
    .with(Velocity)
    .optional(Acceleration)
    .either(Player, Enemy);

var filter = builder.buildFilter();
defer filter.deinit();

// iterate with a standard iterator
var filter_iter = filter.iterator();
while (filter_iter.next()) |_| {
    // the appropriate get* method must be used and is validated in debug builds. `get` is for mutable components, `getConst` is for readonly components
    // and `getOpt` is for optional components and those added to the QueryBuilder with `either`
    std.debug.print("pos: {d}, vel: {d}, player: {d}\n",
        .{ filter_iter.getConst(Position), filter_iter.get(Velocity), filter_iter.getOpt(Player) });
}

// EntityIterator allows you to iterate all the entities regardless of which table they are in with a single iteration. Note that the struct passed in
// is validated in debug builds. The parameters must be in the same order as they were added to the QueryBuilder. Optionals should be marked as such with
// a `?*` and readonly components must be `*const`.
var entity_iter = filter.entityIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
while (entity_iter.next()) |comps| {
    std.debug.print("comps: {any}\n", .{comps});
}

// iterate with a function called for each entity that mathces the filter. The same rules apply as above for the struct passed in.
filter.each(eachFilter);

fn eachFilter(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}
```


### Queries
A query is like a filter in that it is a list of terms that is matched with entities. The difference with a filter is that queries cache their results, which makes them more expensive to create, but cheaper to iterate.


### Systems
A system is a query combined with a callback. Systems can be either ran manually or ran as part of an ECS-managed main loop.