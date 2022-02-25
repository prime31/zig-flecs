const std = @import("std");
const flecs = @import("flecs");

const Position = struct { x: f32, y: f32 };
const Attack = struct { value: f32 };
const Defense = struct { value: f32 };
const FreightCapacity = struct { value: f32 };
const ImpulseSpeed = struct { value: f32 };

pub fn main() !void {
    var world = flecs.World.init();

    const is_a = flecs.Entity.init(world.world, flecs.c.EcsIsA);

    // Create a prefab hierarchy. Prefabs are entities that by default are
    // ignored by queries.

    const spaceship = world.newPrefab("Spaceship");
    spaceship.set(&ImpulseSpeed{ .value = 50 });
    spaceship.set(&Defense{ .value = 50 });

    // By default components in an inheritance hierarchy are shared between
    // entities. The override function ensures that instances have a private
    // copy of the component.
    spaceship.setOverride(&Position{ .x = 0, .y = 0 });

    const freighter = world.newPrefab("Freighter");
    // This ensures the entity inherits all components from spaceship.
    freighter.addPair(is_a, spaceship);
    freighter.set(&FreightCapacity{ .value = 100 });
    freighter.set(&Defense{ .value = 50 });

    const mammoth_freighter = world.newPrefab("MammothFreighter");
    mammoth_freighter.addPair(is_a, freighter);
    mammoth_freighter.set(&FreightCapacity{ .value = 500 });
    mammoth_freighter.set(&Defense{ .value = 300 });

    const frigate = world.newPrefab("Frigate");
    frigate.addPair(is_a, spaceship);
    frigate.set(&Attack{ .value = 100 });
    frigate.set(&Defense{ .value = 75 });
    frigate.set(&ImpulseSpeed{ .value = 125 });

    // Create an entity from a prefab.
    // The instance will have a private copy of the Position component, because
    // of the override in the spaceship entity. All other components are shared.
    const inst = world.newEntityWithName("my_mammoth_freighter");
    inst.addPair(is_a, mammoth_freighter);

    // Inspect the type of the entity. This outputs:
    //    Position,(Identifier,Name),(IsA,MammothFreighter)
    if (inst.getType()) |inst_type| {
        std.log.debug("{s}", .{inst_type.fmt()});
    }

    // Even though the instance doesn't have a private copy of ImpulseSpeed, we
    // can still get it using the regular API (outputs 50)
    if (inst.get(ImpulseSpeed)) |imp| {
        std.log.debug("Impulse speed: {d}", .{imp.value});
    }

    // Prefab components can be iterated like regular components:
    var builder = flecs.QueryBuilder.init(world)
        .with(Position)
        .withReadonly(ImpulseSpeed);
    
    var filter = builder.buildFilter();

    // To select components from a prefab, use SuperSet
    filter.filter.terms[1].subj.set.mask = flecs.c.EcsSuperSet;

    var it = filter.iterator(struct {position: *Position, ispeed: *const ImpulseSpeed});
    while (it.next()) |components| {
        components.position.x += components.ispeed.value;
        std.log.debug("{s}: {d}", .{it.entity().getName(), components.position});
    }

    world.deinit();
}
