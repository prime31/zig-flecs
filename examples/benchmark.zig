const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.ecs_init_w_args(0, null);

    const e_pos = flecs.ecs_new_component(world, 0, "Position", @sizeOf(Position), @alignOf(Position));
    const e_vel = flecs.ecs_new_component(world, 0, "Velocity", @sizeOf(Velocity), @alignOf(Velocity));
    const e_pos_vel = flecs.ecs_new_type(world, 0, "Pos_Vel", "Position, Velocity");

    _ = flecs.ecs_new_system(world, 0, "Move", flecs.EcsOnUpdate, "Position, Velocity", move);

    // createEntities(world.?, e_pos, e_vel);
    createEntitiesBulk(world.?, e_pos_vel);
    std.debug.warn("total with pos {}\n", .{flecs.ecs_count_type(world, flecs.ecs_type_from_entity(world, e_pos))});

    flecs.ecs_set_target_fps(world, 1);
    iterateEntities(world.?);
    _ = flecs.ecs_fini(world);
}

fn move(it: *flecs.struct_ecs_iter_t) callconv(.C) void {
    var p = flecs.ecs_column_w_size(it, @sizeOf(Position), 1);
    var v = flecs.ecs_column_w_size(it, @sizeOf(Velocity), 2);
    const positions = @ptrCast([*]Position, @alignCast(@alignOf(Position), p));
    const velocities = @ptrCast([*]Velocity, @alignCast(@alignOf(Velocity), v));

    var i: usize = 0;
    while (i < it.count) : (i += 1) {
        // std.debug.warn("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], flecs.ecs_get_name(it.world, it.entities[i]) });
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
    }
}

fn createEntitiesBulk(world: *flecs.ecs_world_t, e_pos_vel: flecs.ecs_entity_t) void {
    var timer = std.time.Timer.start() catch unreachable;

    // var pos = [_]Position{.{.x = 100, .y = 100}} ** 10;
    // var vel = [_]Velocity{.{ .x = 5, .y = 5 }} ** 10;
    _ = flecs.ecs_bulk_new_w_type(world, flecs.ecs_type_from_entity(world, e_pos_vel), 1000000, null);

    var end = timer.lap();
    std.debug.warn("create entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}

fn createEntities(world: *flecs.ecs_world_t, e_pos: flecs.ecs_entity_t, e_vel: flecs.ecs_entity_t) void {
    var timer = std.time.Timer.start() catch unreachable;

    var i: usize = 0;
    while (i < 1000000) : (i += 1) {
        const entity = flecs.ecs_new_w_type(world, 0);

        _ = flecs.ecs_add_entity(world, entity, e_pos);
        _ = flecs.ecs_add_entity(world, entity, e_vel);

        var pos = Position{ .x = 100, .y = 100 };
        var vel = Velocity{ .x = 5, .y = 5 };
        _ = flecs.ecs_set_ptr_w_entity(world, entity, e_pos, @sizeOf(Position), &pos);
        _ = flecs.ecs_set_ptr_w_entity(world, entity, e_vel, @sizeOf(Velocity), &vel);
    }

    var end = timer.lap();
    std.debug.warn("create entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}

fn iterateEntities(world: *flecs.ecs_world_t) void {
    var timer = std.time.Timer.start() catch unreachable;

    _ = flecs.ecs_progress(world, 0);

    var end = timer.lap();
    std.debug.warn("iterate entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}
