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

    const entity1 = world.newEntityWithName("MyEntityYo");
    const entity2 = world.newEntityWithName("MyEntity2");
    const entity3 = world.newEntityWithName("HasAccel");
    const entity4 = world.newEntityWithName("HasNoVel");

    entity1.set(Position{ .x = 1, .y = 1 });
    entity1.set(Velocity{ .x = 1.1, .y = 1.1 });
    entity1.set(Enemy{ .id = 66 });
    entity1.set(Acceleration{ .x = 1.2, .y = 1.2 });

    entity2.set(Position{ .x = 2, .y = 2 });
    entity2.set(Velocity{ .x = 1.2, .y = 1.2 });
    entity2.set(Player{ .id = 3 });

    entity3.set(Position{ .x = 3, .y = 3 });
    entity3.set(Velocity{ .x = 1.2, .y = 1.2 });
    entity3.set(Acceleration{ .x = 1.2, .y = 1.2 });

    entity4.set(Position{ .x = 4, .y = 4 });
    entity4.set(Acceleration{ .x = 1.2, .y = 1.2 });

    var builder = flecs.QueryBuilder.init(world)
        .withReadonly(Position)
        .with(Velocity)
        .optional(Acceleration)
        .either(Player, Enemy)
        .orderBy(Position, orderBy);

    var query = builder.buildQuery();
    defer query.deinit();

    std.debug.print("\n\niterate with an Iterator\n", .{});
    var entity_iter = query.iterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    while (entity_iter.next()) |comps| {
        std.debug.print("comps: {any}\n", .{comps});
    }

    std.debug.print("\n\niterate with a Query tableIterator\n", .{});
    var table_iter = query.tableIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    while (table_iter.next()) |it| {
        var i: usize = 0;
        while (i < it.count) : (i += 1) {
            const accel = if (it.data.acc) |acc| acc[i] else null;
            const player = if (it.data.player) |play| play[i] else null;
            const enemy = if (it.data.enemy) |en| en[i] else null;
            std.debug.print("i: {d}, pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ i, it.data.pos[i], it.data.vel[i], accel, player, enemy });
        }
    }

    // add a component causing a new match. This will also trigger a sort.
    entity3.set(Player{ .id = 4 });

    std.debug.print("\n\niterate with a Query each\n", .{});
    query.each(eachQuery);

    std.debug.print("\n\niterate with a Query each\n", .{});
    query.each(eachQuerySeperateParams);
}

fn eachQuery(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

fn eachQuerySeperateParams(pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy) void {
    std.debug.print("pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ pos, vel, acc, player, enemy });
}

fn orderBy(_: flecs.EntityId, c1: ?*const anyopaque, _: flecs.EntityId, c2: ?*const anyopaque) callconv(.C) c_int {
    const p1 = flecs.componentCast(Position, c1);
    const p2 = flecs.componentCast(Position, c2);

    return if (p1.x < p2.x) 1 else -1;
}
