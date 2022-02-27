const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

// Queries have a builtin mechanism for tracking changes per matched table. This
// is a cheap way of eliminating redundant work, as many entities can be skipped
// with a single check.
//
// This example shows how to use change tracking in combination with a few other
// techniques, like using prefabs to store a single dirty state for multiple
// entities and instanced queries.

const Position = struct { x: f32, y: f32 };
const Dirty = struct { value: bool };

pub fn main() !void {
    var world = flecs.World.init();

    // Create a query that just reads a component. We'll use this query for
    // change tracking. Change tracking for a query is automatically enabled
    // when query::changed() is called.
    // Each query has its own private dirty state which is reset only when the
    // query is iterated.
    const QReadCallback = struct { position: *const Position };
    var q_read = world.query(QReadCallback);

    // Create a query that writes the component based on a Dirty state.
    const QWriteCallback = struct {
        dirty: *const Dirty,
        position: *Position,

        pub var modifiers = .{ q.Mask(Dirty, flecs.c.EcsSuperSet), q.Mask(Dirty, 66) };
    };
    var q_write = world.query(QWriteCallback);

    // Create two prefabs with a Dirty component. We can use this to share a
    // single Dirty value for all entities in a table.
    const p1 = world.newPrefab("p1");
    p1.set(&Dirty{ .value = false });

    const p2 = world.newPrefab("p2");
    p2.set(&Dirty{ .value = true });

    // Create instances of p1 and p2. Because the entities have different
    // prefabs, they end up in different tables.
    const e1 = world.newEntityWithName("e1");
    e1.isA(p1);
    e1.set(&Position{ .x = 10, .y = 20 });

    const e2 = world.newEntityWithName("e2");
    e2.isA(p1);
    e2.set(&Position{ .x = 30, .y = 40 });

    const e3 = world.newEntityWithName("e3");
    e3.isA(p2);
    e3.set(&Position{ .x = 50, .y = 60 });

    const e4 = world.newEntityWithName("e4");
    e4.isA(p2);
    e4.set(&Position{ .x = 70, .y = 80 });

    // We can use the changed() function on the query to check if any of the
    // tables it is matched with has changed. Since this is the first time that
    // we check this and the query is matched with the tables we just created,
    // the function will return true.
    std.log.debug("q_read changed: {d}", .{q_read.changed(null)});

    // The changed state will remain true until we have iterated each table.
    var q_read_it = q_read.tableIterator(QReadCallback);
    while (q_read_it.next()) |_| {
        // With the it.changed() function we can check if the table we're
        // currently iterating has changed since last iteration.
        // Because this is the first time the query is iterated, all tables
        // will show up as changed.
        std.log.debug("it.changed for table [{s}]: {d}", .{ q_read_it.tableType().asString(), flecs.c.ecs_query_changed(q_read.query, q_read_it.iter) });
    }

    // Now that we have iterated all tables, the dirty state is reset.
    std.log.debug("q_read changed: {d}\n", .{q_read.changed(null)});

    // Iterate the write query. Because the Position term is InOut (default)
    // iterating the query will write to the dirty state of iterated tables.
    var q_write_it = q_write.tableIterator(QWriteCallback);
    while (q_write_it.next()) |components| {
        std.log.debug("iterate table [{s}]", .{q_write_it.tableType().asString()});

        // Because we enforced that Dirty is a shared component, we can check a single value for the entire table.
        if (!components.data.dirty.*.value) {
            q_write_it.skip();
            std.log.debug("it.skip for table [{s}]", .{q_write_it.tableType().asString()});
            continue;
        }

        // For all other tables the dirty state will be set.
        var i: usize = 0;
        while (i < components.count) : (i += 1) {
            components.data.position[i].x += 1;
            components.data.position[i].y += 1;
        }
    }

    // One of the tables has changed, so q_read.changed() will return true
    std.log.debug("\nq_read changed: {d}", .{q_read.changed(null)});

    // When we iterate the read query, we'll see that one table has changed.
    q_read_it = q_read.tableIterator(QReadCallback);
    while (q_read_it.next()) |_| {
        std.log.debug("it.changed for table [{s}]: {d}", .{ q_read_it.tableType().asString(), q_read.changed(q_read_it.iter) });
    }

    // Output:
    //  q_read.changed(): 1
    //  it.changed() for table [Position, (Identifier,Name), (IsA,p1)]: 1
    //  it.changed() for table [Position, (Identifier,Name), (IsA,p2)]: 1
    //  q_read.changed(): 0
    //
    //  iterate table [Position, (Identifier,Name), (IsA,p1)]
    //  it.skip() for table [Position, (Identifier,Name), (IsA,p1)]
    //  iterate table [Position, (Identifier,Name), (IsA,p2)]
    //
    //  q_read.changed(): 1
    //  it.changed() for table [Position, (Identifier,Name), (IsA,p1)]: 0
    //  it.changed() for table [Position, (Identifier,Name), (IsA,p2)]: 1

    q_read.deinit();
    q_write.deinit();
    world.deinit();
}
