const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Walking = struct {};

pub fn main() !void {
    var world = flecs.World.init();

    // Create an entity with name Bob
    const bob = world.newEntityWithName("Bob");

    // The set operation finds or creates a component, and sets it.
    bob.set(&Position{ .x = 10, .y = 20 });

    // The add operation adds a component without setting a value. This is
    // useful for tags, or when adding a component with its default value.
    bob.add(Walking);

    // Get the value for the Position component
    if (bob.get(Position)) |position| {
        std.log.debug("position: {d}", .{position});
    }

    // Overwrite the value of the Position component
    bob.set(&Position{ .x = 20, .y = 30 });

    // Create another named entity
    const alice = world.newEntityWithName("Alice");
    alice.set(&Position{ .x = 10, .y = 20 });
    alice.add(Walking);

    // TODO: add a getType method and wrapper for flecs types
    // Print all the components the entity has. This will output:
    //    Position, Walking, (Identifier,Name)
    // const alice_type = alice.getType();

    // Remove tag
    alice.remove(Walking);

    // Iterate all entities with Position
    var term = flecs.Term(Position).init(world);
    defer term.deinit();
    var it = term.iterator();

    while (it.next()) |position| {
        std.log.debug("{s}: {d}", .{ it.entity().getName(), position });
    }

    world.deinit();
}
