const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

pub const Query = struct {
    world: flecs.World,
    query: *flecs.ecs_query_t,

    var temp_iter_storage: flecs.ecs_iter_t = undefined;

    pub fn init(world: flecs.World, desc: *flecs.ecs_query_desc_t) @This() {
        return .{ .world = world, .query = flecs.ecs_query_init(world.world, desc).? };
    }

    pub fn deinit(self: *@This()) void {
        flecs.ecs_query_fini(self.query);
    }

    /// gets an iterator that let you iterate the tables and then it provides an inner iterator to interate entities
    pub fn tableIterator(self: *@This(), comptime Components: type) flecs.TableIterator(Components) {
        return flecs.TableIterator(Components).init(flecs.ecs_query_iter(self.world.world, self.query), flecs.ecs_query_next);
    }

    /// gets an iterator that iterates all matched entities from all tables in one iteration. Do not create more than one at a time!
    pub fn iterator(self: *@This(), comptime Components: type) flecs.Iterator(Components) {
        temp_iter_storage = flecs.ecs_query_iter(self.world.world, self.query);
        return flecs.Iterator(Components).init(&temp_iter_storage, flecs.ecs_query_next);
    }

    /// allows either a function that takes 1 parameter (a struct with fields that match the components in the query) or multiple paramters
    /// (each param should match the components in the query in order)
    pub fn each(self: *@This(), comptime function: anytype) void {
        // dont allow BoundFn
        std.debug.assert(@typeInfo(@TypeOf(function)) == .Fn);
        comptime var arg_count = meta.argCount(function);

        if (arg_count == 1) {
            const Components = @typeInfo(@TypeOf(function)).Fn.args[0].arg_type.?;

            var iter = self.iterator(Components);
            while (iter.next()) |comps| {
                @call(.{ .modifier = .always_inline }, function, .{comps});
            }
        } else {
            const Components = std.meta.ArgsTuple(@TypeOf(function));

            var iter = self.iterator(Components);
            while (iter.next()) |comps| {
                @call(.{ .modifier = .always_inline }, function, meta.fieldsTuple(comps));
            }
        }
    }
};