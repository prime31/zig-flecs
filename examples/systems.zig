const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    world.newWrappedRunSystem("MoveWrap", .on_update, ComponentData, moveWrapped);
    world.newWrappedRunSystem("Move2Wrap", .on_update, ComponentData, move2Wrapped);
    world.newWrappedRunSystem("AccelWrap", .on_update, AccelComponentData, accelWrapped);

    const entity1 = world.newEntity();
    entity1.setName("MyEntityYo");

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
    _ = flecs.c.ecs_app_run(world.world, &std.mem.zeroInit(flecs.c.ecs_app_desc_t, .{
        .target_fps = 1,
        .delta_time = 1,
        .threads = 8,
        .enable_rest = true,
    }));
}

const ComponentData = struct { pos: *Position, vel: *Velocity };
const AccelComponentData = struct { pos: *Position, vel: *Velocity, accel: *Acceleration };

fn moveWrapped(iter: *flecs.Iterator(ComponentData)) void {
    while (iter.next()) |e| {
        std.debug.print("Move wrapped: p: {d}, v: {d} - {s}\n", .{ e.pos, e.vel, iter.entity().getName() });
    }
}

fn move2Wrapped(iter: *flecs.Iterator(ComponentData)) void {
    while (iter.next()) |e| {
        std.debug.print("Move2 wrapped: p: {d}, v: {d} - {s}\n", .{ e.pos, e.vel, iter.entity().getName() });
    }
}

fn accelWrapped(iter: *flecs.Iterator(AccelComponentData)) void {
    while (iter.next()) |e| {
        std.debug.print("Accel wrapped: p: {d}, v: {d} - {s}\n", .{ e.pos, e.vel, iter.entity().getName() });
    }
}
