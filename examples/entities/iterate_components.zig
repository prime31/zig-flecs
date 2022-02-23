const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Velocity = struct { x: f32, y: f32 };
const Human = struct {};
const Eats = struct {};
const Apples = struct {};

pub fn main() !void {
    var world = flecs.World.init();

    const bob = world.newEntityWithName("Bob");
    bob.set(&Position{ .x = 10, .y = 20 });
    bob.set(&Velocity{ .x = 1, .y = 1 });
    bob.add(Human);
    bob.addPair(Eats, .{.world = world.world, .id = flecs.meta.componentId(world.world, Apples)});

    
    

    // Ordinary components
}
