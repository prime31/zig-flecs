const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Star = struct {};
const Planet = struct {};
const Moon = struct {};
const Local = struct {};
const World = struct {};

pub fn main() !void {
    var world = flecs.World.init();

    world.registerComponents(.{ Position, Star, Planet, Moon });

    // Create a simple hierarchy.
    // Hierarchies use ECS relations and the builtin flecs::ChildOf relation to
    // create entities as children of other entities.

    const child_of = flecs.Entity.init(world.world, flecs.c.EcsChildOf);

    const sun = world.newEntityWithName("Sun");
    sun.add(Star);
    sun.set(&Position{ .x = 1, .y = 1 });

    const mercury = world.newEntityWithName("Mercury");
    mercury.addPair(child_of, sun);
    mercury.add(Planet);
    mercury.set(&Position{ .x = 1, .y = 1 });

    const venus = world.newEntityWithName("Venus");
    venus.addPair(child_of, sun);
    venus.add(Planet);
    venus.set(&Position{ .x = 2, .y = 2 });

    const earth = world.newEntityWithName("Earth");
    earth.addPair(child_of, sun);
    earth.add(Planet);
    earth.set(&Position{ .x = 3, .y = 3 });

    const moon = world.newEntityWithName("Moon");
    moon.addPair(child_of, earth);
    moon.add(Moon);
    moon.set(&Position{ .x = 0.1, .y = 0.1 });

    // Create a hierarchical query to compute the global position from the
    // local position and the parent position.

    //TODO: build this into Entity or World?
    const position_local_id = flecs.c.ECS_PAIR | @intCast(u64, flecs.meta.componentId(world.world, Position) << 32) + flecs.meta.componentId(world.world, Local);
    const position_world_id = flecs.c.ECS_PAIR | @intCast(u64, flecs.meta.componentId(world.world, Position) << 32) + flecs.meta.componentId(world.world, World);

    var query_t = std.mem.zeroes(flecs.c.ecs_query_desc_t);
    // Read from entity's Local position
    query_t.filter.terms[0] = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = position_local_id, .inout = flecs.c.EcsIn });
    // Write to entity's World position
    query_t.filter.terms[1] = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = position_world_id, .inout = flecs.c.EcsOut });
    // Read from parent's World position
    query_t.filter.terms[2] = std.mem.zeroes(flecs.c.ecs_term_t);
    query_t.filter.terms[2].id = position_world_id;
    query_t.filter.terms[2].inout = flecs.c.EcsIn;
    query_t.filter.terms[2].oper = flecs.c.EcsOptional;
    query_t.filter.terms[2].subj.set.mask = flecs.c.EcsParent | flecs.c.EcsCascade;

    const QCallback = struct { local: *const Position, world: *Position, parent: ?*const Position };

    var q = flecs.Query.init(world, &query_t);
    var it = q.tableIterator(QCallback);

    // Do the transform
    while (it.next()) |tables| {
        // Inner loop, iterates entities in archetype
        var i: usize = 0;
        while (i < tables.count) : (i += 1) {
            tables.data.world[i].x = tables.data.local[i].x;
            tables.data.world[i].y = tables.data.local[i].y;

            if (tables.data.parent) |parent| {
                tables.data.world[i].x += parent[i].x;
                tables.data.world[i].y += parent[i].y;
            }
        }
    }

    // Print ecs positions
    
}
