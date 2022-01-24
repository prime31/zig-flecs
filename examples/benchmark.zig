const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32, z: f64 = 0 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    const e_pos = world.newComponent(Position);
    const e_vel = world.newComponent(Velocity);
    _ = world.newType(0, "Position, Velocity");

    _ = world.newSystem("Move", flecs.EcsOnUpdate, "Position, Velocity", move);

    createEntities(&world, e_pos, e_vel);
    // createEntitiesBulk(world.world, e_pos_vel);

    world.setTargetFps(1);
    world.progress(1);
    iterateEntities(world);
}

fn move(it: *flecs.ecs_iter_t) callconv(.C) void {
    const positions = it.term(Position, 1);
    const velocities = it.term(Velocity, 2);

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
    std.log.debug("create entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}

fn createEntities(world: *flecs.World, e_pos: flecs.ecs_entity_t, e_vel: flecs.ecs_entity_t) void {
    _ = e_vel;
    var timer = std.time.Timer.start() catch unreachable;

    const t = world.getTypeFromStr("Position, Velocity");
    world.dim(1000000);
    world.dimType(t, 1000000);

    var i: usize = 0;
    while (i < 1000000) : (i += 1) {
        world.setPtr(0, e_pos, @sizeOf(Position), &Position{ .x = 100, .y = 100 });
        world.set(0, &Velocity{ .x = 5, .y = 5 });
    }

    world.set(0, &Velocity{ .x = 5, .y = 5 });

    var end = timer.lap();
    std.log.debug("create entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}

fn iterateEntities(world: flecs.World) void {
    world.progress(1);

    var timer = std.time.Timer.start() catch unreachable;

    world.progress(1);

    var end = timer.lap();
    std.log.debug("iterate entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}
