const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    // var world = flecs.ecs_init_w_args(0, null);

    const e_pos = world.newComponent(Position);
    const e_vel = world.newComponent(Velocity);
    const e_pos_vel = world.newType("Pos_Vel", "Position, Velocity");

    world.newSystem("Move", .on_update, "Position, Velocity", move);

    createEntities(world.world, e_pos, e_vel);
    // createEntitiesBulk(world.world, e_pos_vel);

    world.setTargetFps(1);
    world.progress(1);
    iterateEntities(world);
    world.fini();
}

fn move(it: *flecs.ecs_iter_t) callconv(.C) void {
    const positions = it.column(Position, 1);
    // var p = flecs.ecs_column_w_size(it, @sizeOf(Position), 1);
    var v = flecs.ecs_column_w_size(it, @sizeOf(Velocity), 2);
    // const positions = @ptrCast([*]Position, @alignCast(@alignOf(Position), p));
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

    const t = flecs.ecs_type_from_str(world, "Position, Velocity");
    flecs.ecs_dim(world, 1000000);
    flecs.ecs_dim_type(world, t, 1000000);

    var i: usize = 0;
    while (i < 1000000) : (i += 1) {
        var pos = Position{ .x = 100, .y = 100 };
        var vel = Velocity{ .x = 5, .y = 5 };
        const entity = flecs.ecs_set_ptr_w_entity(world, 0, e_pos, @sizeOf(Position), &pos);
        _ = flecs.ecs_set_ptr_w_entity(world, entity, e_vel, @sizeOf(Velocity), &vel);
    }

    var end = timer.lap();
    std.debug.warn("create entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}

fn iterateEntities(world: flecs.World) void {
    world.progress(1);

    var timer = std.time.Timer.start() catch unreachable;

    world.progress(1);

    var end = timer.lap();
    std.debug.warn("iterate entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}
