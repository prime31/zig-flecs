const std = @import("std");
const flecs = @import("flecs");

pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    world.registerComponents(.{ Position });

    const entity1 = world.newEntityWithName("Entity1");
    const entity2 = world.newEntityWithName("Entity2");
    const entity3 = world.newEntityWithName("Entity3");
    const entity4 = world.newEntityWithName("Entity4");

    world.set(entity1, Position{ .x = 0, .y = 0 });
    world.set(entity2, Position{ .x = 2, .y = 2 });
    world.set(entity3, Position{ .x = 3, .y = 3 });
    world.set(entity4, Position{ .x = 4, .y = 4 });

    std.debug.print("\n\niterate Position with a Term\n", .{});
    var term = flecs.Term(Position).init(world);
    defer term.deinit();

    var iter = term.iterator();
    while (iter.next()) |pos| {
        std.debug.print("pos: {d}, entity: {d}, name: {s}\n", .{ pos, iter.entity(), world.getName(iter.entity()) });
    }

    std.debug.print("\n\niterate Position with a Term each\n", .{});
    term.each(eachTerm);
}

fn eachTerm(entity: flecs.EntityId, pos: *Position) void {
    std.debug.print("pos: {d}, entity: {d}\n", .{ pos, entity });
}
