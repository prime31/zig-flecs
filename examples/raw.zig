const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.c.ecs_init().?;
    defer _ = flecs.c.ecs_fini(world);

    // the system below needs Position and Velocity to be defined before it can be created
    var comp_desc = std.mem.zeroInit(flecs.c.ecs_component_desc_t, .{
        .entity = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .name = @typeName(Position) }),
        .size = @sizeOf(Position),
        .alignment = @alignOf(Position),
    });
    const pos_entity = flecs.c.ecs_component_init(world, &comp_desc);

    comp_desc = std.mem.zeroInit(flecs.c.ecs_component_desc_t, .{
        .entity = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .name = @typeName(Velocity) }),
        .size = @sizeOf(Velocity),
        .alignment = @alignOf(Velocity),
    });
    const vel_entity = flecs.c.ecs_component_init(world, &comp_desc);

    // create a system
    var sys_desc = std.mem.zeroes(flecs.c.ecs_system_desc_t);
    sys_desc.entity.name = "MoveSystem";
    sys_desc.entity.add[0] = flecs.c.EcsOnUpdate;
    sys_desc.query.filter.expr = "Position, Velocity";
    sys_desc.callback = move;
    _ = flecs.c.ecs_system_init(world, &sys_desc);

    // create some entities
    const MyEntity = flecs.c.ecs_new_id(world);
    _ = flecs.c.ecs_set_name(world, MyEntity, "MyEntityYo");

    const MyEntity2 = flecs.c.ecs_set_name(world, 0, "MyEntity2");
    std.debug.print("{s}\n\n", .{flecs.c.ecs_get_name(world, MyEntity)});

    _ = flecs.c.ecs_set_id(world, MyEntity, pos_entity, @sizeOf(Position), &Position{ .x = 0, .y = 0 });
    _ = flecs.c.ecs_set_id(world, MyEntity, vel_entity, @sizeOf(Velocity), &Velocity{ .x = 1.1, .y = 1.1 });

    _ = flecs.c.ecs_set_id(world, MyEntity2, pos_entity, @sizeOf(Position), &Position{ .x = 2, .y = 2 });
    _ = flecs.c.ecs_set_id(world, MyEntity2, vel_entity, @sizeOf(Velocity), &Velocity{ .x = 1.2, .y = 1.2 });

    std.debug.print("tick system twice\n", .{});
    _ = flecs.c.ecs_progress(world, 0);
    _ = flecs.c.ecs_progress(world, 0);


    rawFilter(world);
    rawQuery(world);
}

fn rawFilter(world: *flecs.c.ecs_world_t) void {
    std.debug.print("\n\nmanually iterate with a filter\n", .{});

    var filter_desc = std.mem.zeroInit(flecs.c.ecs_filter_desc_t, .{ .expr = "Position, Velocity" });
    var filter: flecs.c.ecs_filter_t = undefined;
    _ = flecs.c.ecs_filter_init(world, &filter, &filter_desc);

    var it_filter = flecs.c.ecs_filter_iter(world, &filter);
    while (flecs.c.ecs_filter_next(&it_filter)) {
        const positions = flecs.column(&it_filter, Position, 1);
        const velocities = flecs.column(&it_filter, Velocity, 2);

        var i: usize = 0;
        while (i < it_filter.count) : (i += 1) {
            std.debug.print("iter: {d}, pos: {d}, vel: {d}\n", .{ i, positions[i], velocities[i] });
        }
    }
    flecs.c.ecs_filter_fini(&filter);
}

fn rawQuery(world: *flecs.c.ecs_world_t) void {
    std.debug.print("\n\nmanually iterate with a query\n", .{});

    var desc = std.mem.zeroes(flecs.c.ecs_query_desc_t);
    desc.filter.expr = "Position, Velocity";
    var query = flecs.c.ecs_query_init(world, &desc).?;

    var it = flecs.c.ecs_query_iter(world, query);
    while (flecs.c.ecs_query_next(&it)) {
        const positions = flecs.column(&it, Position, 1);
        const velocities = flecs.column(&it, Velocity, 2);

        var i: usize = 0;
        while (i < it.count) : (i += 1) {
            std.debug.print("i: {d}, pos: {d}, vel: {d}\n", .{ i, positions[i], velocities[i] });
        }
    }
    flecs.c.ecs_query_fini(query);
}

fn move(it: [*c]flecs.c.ecs_iter_t) callconv(.C) void {
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
