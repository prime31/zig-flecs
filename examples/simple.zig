const std = @import("std");
const flecs = @import("flecs");
// const c = @cImport(@cInclude("flecs.h"));

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    const e_pos = world.newComponent(Position);
    const e_vel = world.newComponent(Velocity);

    world.newSystem("Move", .on_update, "Position, Velocity", move);

    const MyEntity = flecs.ecs_new_w_type(world.world, 0);

    world.setName(MyEntity, "MyEntityYo");
    std.debug.print("{s}\n", .{world.getName(MyEntity)});

    world.set(MyEntity, &Position{ .x = 100, .y = 100 });
    world.set(MyEntity, &Velocity{ .x = 5, .y = 5 });

    world.setTargetFps(1);
    world.progress(0);
    world.progress(0);
}

fn move(it: *flecs.ecs_iter_t) callconv(.C) void {
    const positions = it.column(Position, 1);
    const velocities = it.column(Velocity, 2);
    const world = flecs.World {.world = it.world.?};

    var i: usize = 0;
    while (i < it.count) : (i += 1) {
        std.debug.warn("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], world.getName(it.entities[i]) });
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
    }
}
