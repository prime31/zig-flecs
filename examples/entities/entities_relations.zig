const std = @import("std");
const flecs = @import("flecs");

const Eats = struct {};

pub fn main() !void {
    var world = flecs.World.init();

    // Entity used for Grows relation
    const grows = world.newEntityWithName("Grows");

    // Relation objects
    const apples = world.newEntityWithName("Apples");
    const pears = world.newEntityWithName("Pears");

    // Create an entity with 3 relations. Relations are like regular components,
    // but combine two types/identifiers into an (relation, object) pair.
    const bob = world.newEntityWithName("Bob");
    bob.addPair(Eats, apples);
    bob.addPair(Eats, pears);
    // Pairs can also be constructed from two entity ids
    bob.addPair(grows, pears);

    // Has can be used with relations as well
    if (bob.hasPair(Eats, apples))
        std.log.debug("Bob eats apples.", .{});

    if (bob.hasPair(grows, .{ .id = flecs.c.EcsWildcard }))
        std.log.debug("Bob grows food.", .{});

    // Print the type of the entity. Should output:
    //   (Identifier,Name),(Eats,Apples),(Eats,Pears),(Grows,Pears)
    std.log.debug("Bob's type: {s}", .{bob.getType().asString()});
}
