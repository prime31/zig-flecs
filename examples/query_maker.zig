const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

pub const ZeroSizedTag = struct {};
pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };
pub const Player = struct { id: u8 = 0 };
pub const Enemy = struct { id: u64 = 0 };
pub const PopTart = struct { id: u64 = 0 };
pub const Shit = struct {
    pub const Fuck = struct { id: u8 = 0 };
};
pub const FunkLocity = Wrapper(Velocity);

pub fn Wrapper(comptime t: type) type {
    return struct {
        inner: t,
    };
}

const TableEachCallbackType = struct {
    vel: *const Velocity, // In + And
    acc: ?*Acceleration, // needs metadata. could be Or or Optional. If no metadata can assume Optional.
    player: ?*Player,
    enemy: ?*Enemy,

    // allowed modifiers: Filter, Not, WriteOnly, Or (soon AndFrom, OrFrom, NotFrom)
    pub const modifiers = .{ q.Filter(PopTart), q.Filter(q.Or(Player, Enemy)), q.Writeonly(Acceleration), q.Not(FunkLocity) };
    pub const run = system;
    pub const order_by = orderBy;
    pub const name = "SuperSystem";
};

const SystemCallbackType = struct {
    vel: *const Velocity,
    acc: ?*Acceleration,
    player: ?*Player,
    enemy: ?*Enemy,

    pub const run = system;
    pub const order_by = orderBy;
    pub const name = "SuperSystem";
    pub const expr = "?PopTart";
};

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    world.registerComponents(.{ ZeroSizedTag });

    var filter = world.filter(TableEachCallbackType);
    defer filter.deinit();
    std.debug.print("----- {s}\n", .{filter.asString()});

    var query = world.query(TableEachCallbackType);
    defer query.deinit();
    std.debug.print("----- {s}\n", .{query.asString()});

    world.system(SystemCallbackType, .on_update);

    const entity1 = world.newEntityWithName("MyEntityYo");
    const entity2 = world.newEntityWithName("MyEntity2");
    const entity3 = world.newEntityWithName("HasAccel");
    const entity4 = world.newEntityWithName("HasNoVel");

    entity1.set(Position{ .x = 0, .y = 0 });
    entity1.set(Velocity{ .x = 1.1, .y = 1.1 });
    entity1.set(Enemy{ .id = 66 });
    entity1.set(FunkLocity{ .inner = .{ .x = 555, .y = 666 } });

    entity2.set(Position{ .x = 2, .y = 2 });
    entity2.set(Velocity{ .x = 1.2, .y = 1.2 });
    entity2.set(Player{ .id = 3 });

    entity3.set(Position{ .x = 3, .y = 3 });
    entity3.set(Velocity{ .x = 1.2, .y = 1.2 });
    entity3.set(Player{ .id = 4 });

    entity4.set(Position{ .x = 4, .y = 4 });
    entity4.set(Acceleration{ .x = 1.2, .y = 1.2 });


    var it = filter.iterator(TableEachCallbackType);
    while (it.next()) |comps| {
        std.debug.print("comps: {any}\n", .{comps});
    }

    it = query.iterator(TableEachCallbackType);
    while (it.next()) |comps| {
        std.debug.print("comps: {any}\n", .{comps});
    }

    world.progress(0);
}

fn system(iter: *flecs.Iterator(SystemCallbackType)) void {
    while (iter.next()) |e| {
        std.debug.print("system: a: {d}, v: {d} - {s}\n", .{ e.acc, e.vel, iter.entity().getName() });
    }
}

fn orderBy(_: flecs.EntityId, c1: *const Velocity, _: flecs.EntityId, c2: *const Velocity) c_int {
    if (c1.x == c2.x) return 0;
    return if (c1.x < c2.x) 1 else -1;
}
