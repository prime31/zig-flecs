const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();


    // the system below needs Position and Velocity to be defined before it can be created
    var position = world.newComponent(Position);
    var velocity = world.newComponent(Velocity);

    std.log.debug("ids: ", .{});
    std.log.debug("pos: {d}, vel: {d}", .{ position, velocity });

    var moveSystem = world.newSystem("MoveSystem", flecs.EcsOnUpdate, "Position, Velocity", move);

    std.log.debug("movesystem: {d}", .{moveSystem});

    const myEntity = world.new();

    std.log.debug("entity: {d}", .{myEntity});

    world.setName(myEntity, "MyEntityYo");
    std.debug.print("{s}\n", .{world.getName(myEntity)});

    world.set(myEntity, &Position{ .x = 100, .y = 100 });
    world.set(myEntity, &Velocity{ .x = 5, .y = 5 });

    if (world.get(myEntity, Position)) |pos| {
        std.log.debug("posx: {d}, posy: {d}", .{ pos.x, pos.y });
    }

    if (world.get(myEntity, Velocity)) |vel| {
        std.log.debug("velx: {d}, vely: {d}", .{ vel.x, vel.y });
    }

    world.progress(0);
    world.progress(0);
    world.progress(0);
    world.progress(0);

}

fn move(it: *flecs.ecs_iter_t) callconv(.C) void {
    _ = it;
    std.log.debug("run", .{});
    const positions = it.term(Position, 1);
    const velocities = it.term(Velocity, 2);

    var i: usize = 0;
    while (i < it.count) : (i += 1) {
        std.log.debug("p: {d}, v: {d} \n", .{ positions[i], velocities[i] });
        positions[i].x += velocities[i].x;
        positions[i].y += velocities[i].y;
    }
}
