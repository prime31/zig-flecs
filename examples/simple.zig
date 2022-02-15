const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };
pub const Player = struct { id: u8 = 0 };
pub const Enemy = struct { id: u8 = 0 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    // bulk register required components since we use expressions for the systems
    world.registerComponents(.{ Position, Velocity, Acceleration, Player, Enemy });

    world.newSystem("Move", .on_update, "Position, Velocity", move);
    world.newSystem("Accel", .on_update, "Position, Velocity, Acceleration", accel);

    const MyEntity = world.newEntity();
    world.setName(MyEntity, "MyEntityYo");

    const MyEntity2 = world.newEntityWithName("MyEntity2");
    std.debug.print("{s}\n\n", .{world.getName(MyEntity)});

    const MyEntity3 = world.newEntityWithName("HasAccel");
    const MyEntity4 = world.newEntityWithName("HasNoVel");

    world.set(MyEntity, Position{ .x = 0, .y = 0 });
    world.set(MyEntity, Velocity{ .x = 1.1, .y = 1.1 });
    world.set(MyEntity, Enemy{ .id = 66 });

    world.set(MyEntity2, Position{ .x = 2, .y = 2 });
    world.set(MyEntity2, Velocity{ .x = 1.2, .y = 1.2 });
    world.set(MyEntity2, Player{ .id = 3 });

    world.set(MyEntity3, Position{ .x = 3, .y = 3 });
    world.set(MyEntity3, Velocity{ .x = 1.2, .y = 1.2 });
    world.set(MyEntity3, Acceleration{ .x = 1.2, .y = 1.2 });

    world.set(MyEntity4, Position{ .x = 4, .y = 4 });
    world.set(MyEntity4, Acceleration{ .x = 1.2, .y = 1.2 });

    std.debug.print("tick\n", .{});
    world.progress(0);
    std.debug.print("tick\n", .{});
    world.progress(0);

    std.debug.print("\n\niterate position with a Term\n", .{});
    var term = flecs.Term(Position).init(world);
    defer term.deinit();
    var term_iter = term.iterator();
    while (term_iter.next()) |pos| {
        std.debug.print("pos: {d}, entity: {d}\n", .{ pos, term_iter.entity() });
    }

    std.debug.print("\n\niterate position with a Term each\n", .{});
    term.each(eachTerm);

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

    // world.enableWebExplorer();
    // while (true) world.progress(0.016);
    // flecs.ecs_app_run(world.world, &std.mem.zeroInit(flecs.ecs_app_desc_t, .{}));
}

fn orderBy(e1: flecs.EntityId, c1: ?*const anyopaque, e2: flecs.EntityId, c2: ?*const anyopaque) callconv(.C) c_int {
    const p1 = @ptrCast(*const Position, @alignCast(@alignOf(Position), c1));
    const p2 = @ptrCast(*const Position, @alignCast(@alignOf(Position), c2));
    _ = e1;
    _ = e2;
    return if (p1.x < p2.x) 1 else -1;
}

fn eachTerm(entity: flecs.EntityId, pos: *Position) void {
    std.debug.print("pos: {d}, entity: {d}\n", .{ pos, entity });
}

fn eachFilter(e: struct { pos: *const Position, vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

fn move(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    const positions = flecs.column(it, Position, 1);
    const velocities = flecs.column(it, Velocity, 2);
    const world = flecs.World{ .world = it.*.world.? };

    var i: usize = 0;
    while (i < it.*.count) : (i += 1) {
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
        std.debug.print("p: {d}, v: {d} - {s}\n", .{ positions[i], velocities[i], world.getName(it.*.entities[i]) });
    }
}

fn accel(it: [*c]flecs.ecs_iter_t) callconv(.C) void {
    const positions = flecs.column(it, Position, 1);
    const velocities = flecs.column(it, Velocity, 2);
    const accels = flecs.column(it, Acceleration, 3);
    const world = flecs.World{ .world = it.*.world.? };

    var i: usize = 0;
    while (i < it.*.count) : (i += 1) {
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
        std.debug.print("p: {d}, v: {d}, a: {d} - {s}\n", .{ positions[i], velocities[i], accels[i], world.getName(it.*.entities[i]) });
    }
}
