const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");

pub const Query = struct {
    world: flecs.World,
    query: *flecs.ecs_query_t,

    pub fn init(world: flecs.World, builder: *flecs.QueryBuilder) @This() {
        return .{ .world = world, .query = flecs.ecs_query_init(world.world, &builder.query).? };
    }

    pub fn deinit(self: *@This()) void {
        flecs.ecs_query_fini(self.query);
    }
};