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
    entity1.setName("MyEntityYo");

    const entity2 = world.newEntityWithName("MyEntity2");
    std.debug.print("entity name: {s}\n", .{entity1.getName()});

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

    var filter = builder.buildFilter();
    defer filter.deinit();

    std.debug.print("\n\niterate with a FilterIterator\n", .{});
    var filter_iter = filter.filterIterator();
    while (filter_iter.next()) |_| {
        std.debug.print("pos: {d}, vel: {d}, accel: {d}, player: {d}\n", .{ filter_iter.getConst(Position), filter_iter.get(Velocity), filter_iter.getOpt(Acceleration), filter_iter.getOpt(Player) });
    }

    std.debug.print("\n\niterate with a TableIterator\n", .{});
    var table_iter = filter.tableIterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    while (table_iter.next()) |it| {
        var i: usize = 0;
        while (i < it.count) : (i += 1) {
            const accel = if (it.data.acc) |acc| acc[i] else null;
            const player = if (it.data.player) |play| play[i] else null;
            const enemy = if (it.data.enemy) |en| en[i] else null;
            std.debug.print("i: {d}, pos: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ i, it.data.pos[i], it.data.vel[i], accel, player, enemy });
        }
    }

    std.debug.print("\n\niterate with an Iterator\n", .{});
    var super_iter = filter.iterator(struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    while (super_iter.next()) |comps| {
        std.debug.print("comps: {any}\n", .{comps});
    }

    std.debug.print("\n\niterate with an each function\n", .{});
    filter.each(eachFilter);
}

fn eachFilter(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

// only for queries/systems
fn orderBy(e1: flecs.EntityId, c1: ?*const anyopaque, e2: flecs.EntityId, c2: ?*const anyopaque) callconv(.C) c_int {
    const p1 = @ptrCast(*const Position, @alignCast(@alignOf(Position), c1));
    const p2 = @ptrCast(*const Position, @alignCast(@alignOf(Position), c2));
    _ = e1;
    _ = e2;
    return if (p1.x < p2.x) 1 else -1;
}
