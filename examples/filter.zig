const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };
pub const Player = struct { id: u8 = 0 };
pub const Enemy = struct { id: u64 = 0 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    // bulk register required components since we use expressions for the systems
    world.registerComponents(.{ Position, Velocity, Acceleration, Player, Enemy });

    const entity1 = world.newEntity();
    world.setName(entity1, "MyEntityYo");

    const entity2 = world.newEntityWithName("MyEntity2");
    std.debug.print("{s}\n\n", .{world.getName(entity1)});

    const entity3 = world.newEntityWithName("HasAccel");
    const entity4 = world.newEntityWithName("HasNoVel");

    world.set(entity1, Position{ .x = 0, .y = 0 });
    world.set(entity1, Velocity{ .x = 1.1, .y = 1.1 });
    world.set(entity1, Enemy{ .id = 66 });

    world.set(entity2, Position{ .x = 2, .y = 2 });
    world.set(entity2, Velocity{ .x = 1.2, .y = 1.2 });
    world.set(entity2, Player{ .id = 3 });

    world.set(entity3, Position{ .x = 3, .y = 3 });
    world.set(entity3, Velocity{ .x = 1.2, .y = 1.2 });
    world.set(entity3, Acceleration{ .x = 1.2, .y = 1.2 });

    world.set(entity4, Position{ .x = 4, .y = 4 });
    world.set(entity4, Acceleration{ .x = 1.2, .y = 1.2 });

    std.debug.print("\n\niterate with a Filter\n", .{});
    var builder = flecs.QueryBuilder.init(world)
        .withReadonly(Position)
        .with(Velocity)
        .optional(Acceleration)
        .either(Player, Enemy)
        .orderBy(Position, orderBy);

    var filter = builder.buildFilter();
    defer filter.deinit();

    var filter_iter = filter.iterator();
    while (filter_iter.next()) |_| {
        std.debug.print("pos: {d}, vel: {d}, player: {d}\n", .{ filter_iter.getConst(Position), filter_iter.get(Velocity), filter_iter.getOpt(Player) });
    }

    std.debug.print("\n\niterate with a Filter g_iter\n", .{});
    var entity_iter = filter.entityIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    while (entity_iter.next()) |comps| {
        std.debug.print("comps: {any}\n", .{comps});
    }

    std.debug.print("\n\niterate with a Filter each\n", .{});
    filter.each(eachFilter);
}

fn orderBy(e1: flecs.EntityId, c1: ?*const anyopaque, e2: flecs.EntityId, c2: ?*const anyopaque) callconv(.C) c_int {
    const p1 = @ptrCast(*const Position, @alignCast(@alignOf(Position), c1));
    const p2 = @ptrCast(*const Position, @alignCast(@alignOf(Position), c2));
    _ = e1;
    _ = e2;
    return if (p1.x < p2.x) 1 else -1;
}

fn eachFilter(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}
