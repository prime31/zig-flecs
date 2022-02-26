const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Velocity = struct { x: f32, y: f32 };

const MoveCallback = struct {
    position: *Position,
    velocity: *const Velocity,

    pub const name = "Move";
    pub const run = move;
};

fn move(iter: *flecs.Iterator(MoveCallback)) void {
    while (iter.next()) |components| {
        components.position.x += components.velocity.x;
        components.position.y += components.velocity.y;
        std.log.debug("{s}: {d}", .{ iter.entity().getName(), components.position });
    }
}

pub fn main() !void {
    var world = flecs.World.init();

    // Create a system for Position, Velocity. Systems are like queries (see
    // queries) with a function that can be ran or scheduled (see pipeline).
    world.system(MoveCallback, .on_update);

    // Create a few test entities for a Position, Velocity query
    const e1 = world.newEntityWithName("e1");
    e1.set(&Position{ .x = 10, .y = 20});
    e1.set(&Velocity{ .x = 1, .y = 2});

    const e2 = world.newEntityWithName("e2");
    e2.set(&Position{ .x = 10, .y = 20});
    e2.set(&Velocity{ .x = 3, .y = 4});

    // This entity will not match as it does not have Position, Velocity
    const e3 = world.newEntityWithName("e3");
    e3.set(&Position{ .x = 10, .y = 20});

    world.progress(1);

    world.deinit();
}
