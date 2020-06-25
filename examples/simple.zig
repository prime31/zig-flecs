const std = @import("std");
const flecs = @import("flecs");
// const c = @cImport(@cInclude("flecs.h"));

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.ecs_init_w_args(0, null);

    const e_pos = flecs.ecs_new_component(world, 0, "Position", @sizeOf(Position), @alignOf(Position));
    const e_vel = flecs.ecs_new_component(world, 0, "Velocity", @sizeOf(Velocity), @alignOf(Velocity));

    _ = flecs.ecs_new_system(world, 0, "Move", flecs.EcsOnUpdate, "Position, Velocity", move);

    const MyEntity = flecs.ecs_new_w_type(world, 0);

    var ecs_name = flecs.EcsName{.value = "MyEntityYo", .symbol = null, .alloc_value = null,};
    _ = flecs.ecs_set_ptr_w_entity(world, MyEntity, flecs.FLECS__EEcsName, @sizeOf(flecs.EcsName), &ecs_name);

    _ = flecs.ecs_add_entity(world, MyEntity, e_pos);
    _ = flecs.ecs_add_entity(world, MyEntity, e_vel);

    var pos = Position{ .x = 100, .y = 100 };
    var vel = Velocity{ .x = 5, .y = 5 };
    _ = flecs.ecs_set_ptr_w_entity(world, MyEntity, e_pos, @sizeOf(Position), &pos);
    _ = flecs.ecs_set_ptr_w_entity(world, MyEntity, e_vel, @sizeOf(Velocity), &vel);

    flecs.ecs_set_target_fps(world, 1);
    _ = flecs.ecs_progress(world, 0);
    _ = flecs.ecs_progress(world, 0);

    _ = flecs.ecs_fini(world);
}

fn move(it: *flecs.struct_ecs_iter_t) callconv(.C) void {
    var p = flecs.ecs_column_w_size(it, @sizeOf(Position), 1);
    var v = flecs.ecs_column_w_size(it, @sizeOf(Velocity), 2);
    const positions = @ptrCast([*]Position, @alignCast(@alignOf(Position), p));
    const velocities = @ptrCast([*]Velocity, @alignCast(@alignOf(Velocity), v));

    var i: usize = 0;
    while (i < it.count) : (i += 1) {
        std.debug.warn("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], flecs.ecs_get_name(it.world, it.entities[i]) });
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
    }
}
