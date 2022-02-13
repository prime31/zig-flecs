const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    // the system below needs Position and Velocity to be defined before it can be created
    _ = world.newComponent(Position);
    _ = world.newComponent(Velocity);

    world.newSystem("Move", .on_update, "Position, Velocity", move);

    const MyEntity = world.newEntity();
    world.setName(MyEntity, "MyEntityYo");

    const MyEntity2 = world.newEntityWithName("MyEntity2");

    std.debug.print("{s}\n\n", .{world.getName(MyEntity)});

    world.set(MyEntity, &Position{ .x = 30, .y = 30 });
    world.set(MyEntity, &Velocity{ .x = 5, .y = 5 });

    world.set(MyEntity2, &Position{ .x = 20, .y = 20 });
    world.set(MyEntity2, &Velocity{ .x = 5, .y = 5 });

    std.debug.print("tick\n", .{});
    world.progress(0);
    std.debug.print("tick\n", .{});
    world.progress(0);

    std.debug.print("\n\nmanually iterate position with a termIter\n", .{});
    var term = world.term(Position);
    defer term.deinit();
    var term_iter = term.iterator();
    while (term_iter.next()) |pos| {
        std.debug.print("pos: {d}, entity: {d}\n", .{ pos, term_iter.entity() });
    }

    std.debug.print("\n\nmanually iterate position with a termIters each\n", .{});
    term.each(each);

    // std.debug.print("\n\nmanually iterate with a filter\n", .{});
    // var filter = world.filterInit("Position, Velocity");
    // var it_filter = world.filterIter(&filter);
    // while (flecs.ecs_filter_next(&it_filter)) {
    //     const positions = flecs.column(&it_filter, Position, 1);
    //     const velocities = flecs.column(&it_filter, Velocity, 2);

    //     var i: usize = 0;
    //     while (i < it_filter.count) : (i += 1) {
    //         std.debug.print("iter: {d}, pos: {d}, vel: {d}\n", .{ i, positions[i], velocities[i] });
    //     }
    // }
    // world.filterDeinit(&filter);

    std.debug.print("\n\nmanually iterate with a filter from a QueryBuilder\n", .{});
    var builder = flecs.QueryBuilder.init(world);
    _ = builder.with(Position).with(Velocity);

    var filter2 = world.filterFromBuilder(builder);
    var it_filter2 = world.filterIter(&filter2);
    while (flecs.ecs_filter_next(&it_filter2)) {
        const positions = flecs.column(&it_filter2, Position, 1);
        const velocities = flecs.column(&it_filter2, Velocity, 2);

        var i: usize = 0;
        while (i < it_filter2.count) : (i += 1) {
            std.debug.print("iter: {d}, pos: {d}, vel: {d}\n", .{ i, positions[i], velocities[i] });
        }
    }
    world.filterDeinit(&filter2);


    std.debug.print("\n\nmanually iterate with a query\n", .{});
    var query = world.queryInit("Position, Velocity");
    var it = world.queryIter(query);
    while (flecs.ecs_query_next(&it)) {
        const positions = flecs.column(&it, Position, 1);
        const velocities = flecs.column(&it, Velocity, 2);

        var i: usize = 0;
        while (i < it.count) : (i += 1) {
            std.debug.print("iter: {d}, pos: {d}, vel: {d}\n", .{ i, positions[i], velocities[i] });
        }
    }
    world.queryDeinit(query);
}

fn each(entity: flecs.Entity, pos: *Position) void {
    std.debug.print("pos: {d}, entity: {d}\n", .{ pos, entity });
}

fn move(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    const positions = flecs.column(it, Position, 1);
    const velocities = flecs.column(it, Velocity, 2);
    const world = flecs.World{ .world = it.*.world.? };

    var i: usize = 0;
    while (i < it.*.count) : (i += 1) {
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
        std.debug.print("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], world.getName(it.*.entities[i]) });
    }
}
