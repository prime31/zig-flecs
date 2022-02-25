const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Velocity = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();

    // Create a query for Position, Velocity. Queries are the fastest way to
    // iterate entities as they cache results.
    const QueryCallback = struct { position: *Position, velocity: *const Velocity };
    var query = world.query(QueryCallback);

    // Create a few test entities for a Position, Velocity query
    const e1 = world.newEntityWithName("e1");
    e1.set(&Position{ .x = 10, .y = 20 });
    e1.set(&Velocity{ .x = 1, .y = 2 });

    const e2 = world.newEntityWithName("e2");
    e2.set(&Position{ .x = 10, .y = 20 });
    e2.set(&Velocity{ .x = 3, .y = 4 });

    // This entity will not match as it does not have Position, Velocity
    const e3 = world.newEntityWithName("e3");
    e3.set(&Position{ .x = 10, .y = 20 });

    // Iterate entities matching the query
    var query_it = query.iterator(QueryCallback);

    while (query_it.next()) |components| {
        components.position.x += components.velocity.x;
        components.position.y += components.velocity.y;
        std.log.debug("{s} : {d}", .{ query_it.entity().getName(), components.position });
    }

    // Filters are uncached queries. They are a bit slower to iterate but faster
    // to create & have lower overhead as they don't have to maintain a cache.
    const FilterCallback = struct { position: *Position, velocity: *const Velocity };
    var filter = world.filter(FilterCallback);

    var filter_it = filter.iterator(FilterCallback);
    while (filter_it.next()) |components| {
        components.position.x += components.velocity.x;
        components.position.y += components.velocity.y;
        std.log.debug("{s} : {d}", .{ filter_it.entity().getName(), components.position });
    }

    // Cleanup filter. Filters can allocate memory if the number of terms
    // exceeds their internal buffer, or when terms have names. In this case the
    // filter didn't allocate, so while fini isn't strictly necessary here, it's
    // still good practice to add it.
    filter.deinit();
    query.deinit();

    world.deinit();
}
