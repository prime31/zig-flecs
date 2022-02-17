## Flecs Zig Bindings

Currently quite messy and in progress zigification of the Flecs API.

#### TODO:
- make a `Query` struct and interator to match the `Filter` one
- make three ways to iterate for Filter/Query:
    1. iterator: iterates just the entities and requires manually fetching components (done)
    2. entityIterator: iterates each entity (done)
    3. tableIterator: iterates each archetype and provides component arrays for each (done)
- figure out a good, clean way to handle Systems ergonomically. Start with a simple ecs_iter_t wrapper since that is always passed to systems


### Random Info
Reflection metadata is enabled by default. To disable it in your root zig file add `pub const disable_reflection = true;`


### TableIterator Musings and API
```zig
var filter = ...

// inner iter.data is derived from the struct passed into the TableIterator with the types converted to arrays from the table
// const Columns = struct {
//      pos: [*]Position,
//      vel: [*]const Velocity,
//      acc: ?[*]Acceleration,
//      player: ?[*]Player,
//      enemy: ?[*]Enemy,
// }

// while loops through the tables. Each iteration the `it` returned has the arrays from the `Columns` struct
var table_iter = filter.tableIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
while (table_iter.next()) |it| {
    // inner loop loops through the entities in the table
    var i: usize = 0;
    while (i < it.count) : (i += 1) {
        const accel = if (it.data.acc) |acc| acc[i] else null;
        const player = if (it.data.player) |play| play[i] else null;
        const enemy = if (it.data.enemy) |en| en[i] else null;
        std.debug.print("i: {d}, pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ i, it.data.pos[i], it.data.vel[i], accel, player, enemy });
    }
}
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
    // and `getOpt/getOptConst` are for optional components and those added to the QueryBuilder with `either`
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

// iterate with a function called for each entity that matches the filter. The same rules apply as above for the struct passed in.
filter.each(eachFilter);

// iterate with a function called for each entity that matches the filter. The same rules apply as above for the struct passed in, with the only
// difference being each component is a separate parameter.
filter.each(eachFilterSeperateParams);

fn eachFilter(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

fn eachFilterSeperateParams(pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy) void {
    std.debug.print("pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ pos, vel, acc, player, enemy });
}
```


### Queries
A query is like a filter in that it is a list of terms that is matched with entities. The difference with a filter is that queries cache their results, which makes them more expensive to create, but cheaper to iterate.

```zig
// QueryBuilder is used to define what you want to filter for
var builder = flecs.QueryBuilder.init(world)
    .withReadonly(Position)
    .with(Velocity)
    .optional(Acceleration)
    .either(Player, Enemy)
    .orderBy(Position, orderBy);

var query = builder.buildQuery();
defer query.deinit();

std.debug.print("\n\niterate with a Query entityIterator\n", .{});
var entity_iter = query.entityIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
while (entity_iter.next()) |comps| {
    std.debug.print("comps: {any}\n", .{comps});
}

std.debug.print("\n\niterate with a Query tableIterator\n", .{});
var table_iter = query.tableIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
while (table_iter.next()) |it| {
    var i: usize = 0;
    while (i < it.count) : (i += 1) {
        const accel = if (it.data.acc) |acc| acc[i] else null;
        const player = if (it.data.player) |play| play[i] else null;
        const enemy = if (it.data.enemy) |en| en[i] else null;
        std.debug.print("i: {d}, pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ i, it.data.pos[i], it.data.vel[i], accel, player, enemy });
    }
}

std.debug.print("\n\niterate with a Query each\n", .{});
query.each(eachQuery);

std.debug.print("\n\niterate with a Query each\n", .{});
query.each(eachQuerySeperateParams);

fn eachQuery(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

fn eachQuerySeperateParams(pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy) void {
    std.debug.print("pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ pos, vel, acc, player, enemy });
}
```


### Systems (zigifed wrapper coming soon)
A system is a query combined with a callback. Systems can be either ran manually or ran as part of an ECS-managed main loop.


### Observers/Triggers (coming soon)