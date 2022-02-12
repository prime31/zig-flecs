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

    world.set(MyEntity, &Position{ .x = 100, .y = 100 });
    world.set(MyEntity, &Velocity{ .x = 5, .y = 5 });

    world.set(MyEntity2, &Position{ .x = 100, .y = 100 });
    world.set(MyEntity2, &Velocity{ .x = 5, .y = 5 });

    world.progress(0);
    world.progress(0);
}

fn move(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    const positions = flecs.column(it, Position, 1);
    const velocities = flecs.column(it, Velocity, 2);
    const world = flecs.World{ .world = it.*.world.? };

    var i: usize = 0;
    while (i < it.*.count) : (i += 1) {
        std.debug.print("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], world.getName(it.*.entities[i]) });
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
    }
}
