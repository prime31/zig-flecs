const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

const Timeout = struct {
    value: f32,
};

const ExpireCallback = struct {
    timeout: *Timeout,
    pub const name = "Expire";
    pub const run = expire;
};

// System that deletes an entity after a timeout expires
fn expire(it: *flecs.Iterator(ExpireCallback)) void {
    while (it.next()) |components| {
        components.timeout.value -= it.iter.delta_time;
        if (components.timeout.value <= 0) {
            // When deleting the entity, use the world provided by the iterator.

            // To make sure that the storage doesn't change while a system is
            // iterating entities, and multiple threads can safely access the
            // data, mutations (like a delete) are added to a command queue and
            // executed when it's safe to do so.

            // A system should not use the world pointer that is provided by the
            // ecs_init function, as this will throw an error that the world is
            // in readonly mode (try replacing it->world with it->real_world).
            std.log.debug("Expire: {s} deleted!", .{it.entity().getName()});
            it.entity().delete();
        }
    }
}

const PrintExpireCallback = struct {
    timeout: *const Timeout,

    pub const name = "PrintExpire";
    pub const run = printExpire;
};

// System that prints remaining expiry time
fn printExpire(it: *flecs.Iterator(PrintExpireCallback)) void {
    while (it.next()) |components| {
        std.log.debug("PrintExpire: {s} has {d} seconds left", .{ it.entity().getName(), components.timeout.value });
    }
}

const ObserverCallback = struct {
    timeout: *const Timeout,

    pub const name = "Expired";
    pub const run = expired;
};

// Observer that triggers when the component is actually removed
fn expired(it: *flecs.Iterator(ObserverCallback)) void {
    _ = it;
    std.log.debug("Expired: {s} actually deleted", .{ "Entity.getName"});
}

pub fn main() !void {
    var world = flecs.World.init();

    world.system(ExpireCallback, .on_update);
    world.system(PrintExpireCallback, .on_update);
    world.observer(ObserverCallback, .on_remove);

    const e = world.newEntityWithName("MyEntity");
    e.set(&Timeout{ .value = 3 });

    world.setTargetFps(1);

    var progress: bool = true;
    while (progress) {
        world.progress(0);

        if (!e.isAlive()) {
            break;
        }
     
    }
}
