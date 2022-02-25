const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Velocity = struct { x: f32, y: f32 };
const Human = struct {};
const Eats = struct {};
const Apples = struct {};

fn iterateComponents(world: flecs.World, entity: flecs.Entity) void {

    // First get the entity's type, which is a vector of (component) ids.
    if (entity.getType()) |entity_type| {

        // 1. The easiest way to print the components is to use ecs_type_str
        std.log.debug("{s}", .{entity_type.fmt()});

        // 2. To print individual ids, iterate the type array with ecs_id_str
        for (entity_type.toArray()) |id| {
            std.log.debug("{d} : {s}", .{ id, flecs.c.ecs_id_str(world.world, id) });
        }

        // 3. We can also inspect and print the ids in our own way. This is a
        // bit more complicated as we need to handle the edge cases of what can be
        // encoded in an id, but provides the most flexibility.

        // TODO

    }
}

pub fn main() !void {
    var world = flecs.World.init();

    // Create an entity which has all of the above
    const bob = world.newEntityWithName("Bob");
    bob.set(&Position{ .x = 10, .y = 20 });
    bob.set(&Velocity{ .x = 1, .y = 1 });
    bob.add(Human);
    bob.addPair(Eats, Apples);

    // Iterate & components of Bob
    std.log.debug("Bob's components:", .{});
    iterateComponents(world, bob);

    // We can use the same function to iterate the components of a component
    std.log.debug("Positions's components:", .{});
    iterateComponents(world, .{ .world = world.world, .id = flecs.meta.componentId(world.world, Position) });
}
