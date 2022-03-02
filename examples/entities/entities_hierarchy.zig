const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Star = struct {};
const Planet = struct {};
const Moon = struct {};


fn iterateTree(world: flecs.World, e: flecs.Entity, p_parent: Position) void {
    // Print hierarchical name of entity & the entity type
    // TODO: wrap flecs.c.ecs_get_fullpath?
    std.debug.print("-- path: {s}, type: {s}\n", .{ e.getFullpath(), world.getTypeStr(e.getType().type) });

    // Get entity position
    if (e.get(Position)) |position| {
        // Calculate actual position
        const p_actual = .{ .x = position.x + p_parent.x, .y = position.y + p_parent.y };
        std.log.debug("{s}: {d}", .{ e.getName(), p_actual });

        // Iterate children recursively
        var term = flecs.Term({}).initWithPair(world, world.pair(flecs.c.EcsChildOf, e.id));
        var iter = term.entityIterator();
        while (iter.next()) |entity| {
            iterateTree(world, entity, p_actual);
        }
    }
}

pub fn main() !void {
    var world = flecs.World.init();

    // Create a simple hierarchy.
    // Hierarchies use ECS relations and the builtin flecs::ChildOf relation to create entities as children of other entities.
    const sun = world.newEntityWithName("Sun");
    sun.add(Star);
    sun.set(&Position{ .x = 1, .y = 1 });

    const mercury = world.newEntityWithName("Mercury");
    mercury.addPair(flecs.c.EcsChildOf, sun);
    mercury.add(Planet);
    mercury.set(&Position{ .x = 1, .y = 1 });

    const venus = world.newEntityWithName("Venus");
    venus.addPair(flecs.c.EcsChildOf, sun);
    venus.add(Planet);
    venus.set(&Position{ .x = 2, .y = 2 });

    const earth = world.newEntityWithName("Earth");
    earth.addPair(flecs.c.EcsChildOf, sun);
    earth.add(Planet);
    earth.set(&Position{ .x = 3, .y = 3 });

    const moon = world.newEntityWithName("Moon");
    moon.addPair(flecs.c.EcsChildOf, earth);
    moon.add(Moon);
    moon.set(&Position{ .x = 0.1, .y = 0.1 });

    // Is the Moon a child of Earth?
    if (moon.hasPair(flecs.c.EcsChildOf, earth))
        std.log.debug("Moon is a child of Earth!", .{});

    // Do a depth-first walk of the tree
    iterateTree(world, sun, .{ .x = 0, .y = 0 });
}
