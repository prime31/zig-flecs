const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

const Position = struct { x: f32, y: f32 };
const Local = struct {};
const World = struct {};

pub fn main() !void {
    var world = flecs.World.init();

    world.registerComponents(.{ Local, World });

    // Create a simple hierarchy.
    // Hierarchies use ECS relations and the builtin flecs::ChildOf relation to
    // create entities as children of other entities.
    const sun = world.newEntityWithName("Sun");
    sun.addPair(Position, World);
    sun.setPair(Position, Local, .{ .x = 1, .y = 1 });

    const mercury = world.newEntityWithName("Mercury");
    mercury.addPair(flecs.c.EcsChildOf, sun);
    mercury.addPair(Position, World);
    mercury.setPair(Position, Local, .{ .x = 1, .y = 1 });

    const venus = world.newEntityWithName("Venus");
    venus.addPair(flecs.c.EcsChildOf, sun);
    venus.addPair(Position, World);
    venus.setPair(Position, Local, .{ .x = 2, .y = 2 });

    const earth = world.newEntityWithName("Earth");
    earth.addPair(flecs.c.EcsChildOf, sun);
    earth.addPair(Position, World);
    earth.setPair(Position, Local, .{ .x = 3, .y = 3 });

    const moon = world.newEntityWithName("Moon");
    moon.addPair(flecs.c.EcsChildOf, earth);
    moon.addPair(Position, World);
    moon.setPair(Position, Local, .{ .x = 0.1, .y = 0.1 });

    // Create a hierarchical query to compute the global position from the local position and the parent position
    var query_t = std.mem.zeroes(flecs.c.ecs_query_desc_t);
    // Read from entity's Local position
    query_t.filter.terms[0] = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = world.pair(Position, Local), .inout = flecs.c.EcsIn });
    // Write to entity's World position
    query_t.filter.terms[1] = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = world.pair(Position, World), .inout = flecs.c.EcsOut });
    // Read from parent's World position
    query_t.filter.terms[2].id = world.pair(Position, World);
    query_t.filter.terms[2].inout = flecs.c.EcsIn;
    query_t.filter.terms[2].oper = flecs.c.EcsOptional;
    query_t.filter.terms[2].subj.set.mask = flecs.c.EcsParent | flecs.c.EcsCascade;

    const QCallback = struct { local: *const Position, world: *Position, parent: ?*const Position };
    var query = flecs.Query.init(world, &query_t);
    defer query.deinit();

    {
        // tester to show the same as above with struct query format
        const Funky = struct {
            pos_local: *const Position,
            pos_world: *Position,
            pos_parent: ?*const Position,

            pub var modifiers = .{ q.PairI(Position, Local, "pos_local"), q.WriteonlyI(q.Pair(Position, World), "pos_world"), q.MaskI(q.Pair(Position, World), flecs.c.EcsParent | flecs.c.EcsCascade, "pos_parent") };
        };
        var q2 = world.query(Funky);
        defer q2.deinit();
        std.debug.print("\n------ {s}\n", .{query.asString()});
        std.debug.print("------ {s}\n\n", .{q2.asString()});
    }

    // Do the transform
    var it = query.iterator(QCallback);
    while (it.next()) |comps| {
        std.debug.print("-- path: {s}, type: {s}\n", .{ it.entity().getFullpath(), world.getTypeStr(it.entity().getType().type) });
        comps.world.x = comps.local.x;
        comps.world.y = comps.local.y;

        if (comps.parent) |parent| {
            comps.world.x += parent.x;
            comps.world.y += parent.y;
        }
    }

    // Print ecs positions
    var term = flecs.Term(Position).initWithPair(world, world.pair(Position, World));
    var iter = term.iterator();
    while (iter.next()) |pos| {
        std.debug.print("{s}: {any}\n", .{ iter.entity().getName(), pos });
    }
}
