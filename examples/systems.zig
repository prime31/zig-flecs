const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    // bulk register required components since we use expressions for the systems
    world.registerComponents(.{ Position, Velocity, Acceleration });

    world.newRunSystem("Move", .on_update, "Position, Velocity", move);
    world.newSystem("Accel", .on_update, "Position, Velocity, Acceleration", accel);

    const entity1 = world.newEntity();
    entity1.setName("MyEntityYo");
    std.debug.print("{s}\n\n", .{entity1.getName()});

    const entity2 = world.newEntityWithName("MyEntity2");
    const entity3 = world.newEntityWithName("HasAccel");
    const entity4 = world.newEntityWithName("HasNoVel");

    entity1.set(Position{ .x = 0, .y = 0 });
    entity1.set(Velocity{ .x = 0.1, .y = 0.1 });

    entity2.set(Position{ .x = 2, .y = 2 });
    entity2.set(Velocity{ .x = 0.2, .y = 0.2 });

    entity3.set(Position{ .x = 3, .y = 3 });
    entity3.set(Velocity{ .x = 0.3, .y = 0.3 });
    entity3.set(Acceleration{ .x = 1.2, .y = 1.2 });

    entity4.set(Position{ .x = 4, .y = 4 });
    entity4.set(Acceleration{ .x = 1.2, .y = 1.2 });

    std.debug.print("tick\n", .{});
    world.progress(0);
    std.debug.print("tick\n", .{});
    world.progress(0);

    // open the web explorer at https://www.flecs.dev/explorer/?remote=true
    _ = flecs.ecs_app_run(world.world, &std.mem.zeroInit(flecs.ecs_app_desc_t, .{
        .target_fps = 1,
        .delta_time = 1,
        .threads = 4,
        .enable_rest = true,
    }));
}

const ComponentData = struct { pos: *Position, vel: *Velocity };

fn move(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    var iter = flecs.Iterator(ComponentData).init(it, flecs.ecs_iter_next);
    while (iter.next()) |e| {
        std.debug.print("p: {d}, v: {d} - {s}\n", .{ e.pos, e.vel, iter.entity().getName() });
    }
}

fn accel(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    const positions = flecs.column(it, Position, 1);
    const velocities = flecs.column(it, Velocity, 2);
    const accels = flecs.column(it, Acceleration, 3);
    const world = flecs.World{ .world = it.*.world.? };

    var i: usize = 0;
    while (i < it.*.count) : (i += 1) {
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
        std.debug.print("p: {d}, v: {d}, a: {d} - {s}\n", .{ positions[i], velocities[i], accels[i], world.getName(it.*.entities[i]) });
    }
}
