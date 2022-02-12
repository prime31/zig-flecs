const std = @import("std");
const flecs = @import("flecs");

const total_entities: i32 = 1_000_000;
pub const Velocity = struct { x: f32, y: f32, z: f64 = 0 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    const e_pos = world.newComponent(Position);
    const e_vel = world.newComponent(Velocity);

    world.newSystem("Move", .on_update, "Position, Velocity", move);

    createEntities(&world, e_pos, e_vel);
    iterateEntities(world);
}

fn move(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    const positions = flecs.column(it, Position, 1);
    const velocities = flecs.column(it, Velocity, 2);

    var i: usize = 0;
    while (i < it[0].count) : (i += 1) {
        // std.debug.print("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], flecs.ecs_get_name(it.world, it.entities[i]) });
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
    }
}

fn createEntities(world: *flecs.World, e_pos: flecs.ecs_entity_t, e_vel: flecs.ecs_entity_t) void {
    _ = e_vel;
    var timer = std.time.Timer.start() catch unreachable;

    const t = world.typeFromStr("Position, Velocity");
    world.dim(total_entities);
    world.dimType(t, total_entities);

    var i: usize = 0;
    while (i < total_entities) : (i += 1) {
        world.setPtr(0, e_pos, @sizeOf(Position), &Position{ .x = 100, .y = 100 });
        world.set(0, &Velocity{ .x = 5, .y = 5 });
    }

    world.set(0, &Velocity{ .x = 5, .y = 5 });

    var end = timer.lap();
    std.debug.print("create {d} entities: \t{d}\n", .{ total_entities, @intToFloat(f64, end) / 1000000000 });
}

fn iterateEntities(world: flecs.World) void {
    var timer = std.time.Timer.start() catch unreachable;
    world.progress(0);

    var end = timer.lap();
    std.debug.print("iterate entities: \t{d}\n", .{@intToFloat(f64, end) / 1000000000});
}
