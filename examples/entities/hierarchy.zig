const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Star = struct {};
const Planet = struct {};
const Moon = struct {};

// TODO: Handle this with Term instead of this.
const Iterator = struct {
    iter: flecs.c.ecs_iter_t,
    index: usize = 0,

    pub fn next(self: *@This()) bool {
        if (self.index >= self.iter.count) {
            self.index = 0;
            if (!flecs.c.ecs_term_next(&self.iter)) return false;
        }

        self.index += 1;
        return true;
    }
};

fn iterateTree(world: flecs.World, e: flecs.Entity, p_parent: Position) void {
    // Print hierarchical name of entity & the entity type
    // TODO: wrap flecs.c.ecs_get_fullpath?
    std.debug.print("-- path: {s}, type: {s}\n", .{ world.getFullpath(e.id), world.getTypeStr(world.getType(e)) });

    // Get entity position
    if (e.get(Position)) |position| {

        // Calculate actual position
        const p_actual = .{ .x = position.x + p_parent.x, .y = position.y + p_parent.y };
        std.log.debug("{s}: {d}", .{ e.getName(), p_actual });

        // Iterate children recursively

        // TODO: Here is where we want to set the term id to the pair id
        var it: Iterator = .{ .iter = flecs.c.ecs_term_iter(world.world, &std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = flecs.c.ECS_PAIR | (flecs.c.EcsChildOf << @as(c_int, 32)) + @intCast(u32, e.id) })) };

        while (it.next()) {
            iterateTree(world, .{ .world = world.world, .id = it.iter.entities[it.index - 1] }, p_actual);
        }
    }
}

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

    // Is the Moon a child of Earth?
    if (moon.hasPair(child_of, earth))
        std.log.debug("Moon is a child of Earth!", .{});

    // Do a depth-first walk of the tree
    iterateTree(world, sun, .{ .x = 0, .y = 0 });
}
