const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

pub const Query = struct {
    world: flecs.World,
    query: *flecs.ecs_query_t,

    pub fn init(world: flecs.World, desc: *flecs.ecs_query_desc_t) @This() {
        return .{ .world = world, .query = flecs.ecs_query_init(world.world, desc).? };
    }

    pub fn deinit(self: *@This()) void {
        flecs.ecs_query_fini(self.query);
    }

    /// gets an iterator that each iteration provides the components for an entity regardless of how may tables are being iterated
    pub fn entityIterator(self: *@This(), comptime Components: type) flecs.EntityIterator(Components) {
        return flecs.EntityIterator(Components).init(flecs.ecs_query_iter(self.world.world, self.query), flecs.ecs_query_next);
    }

    /// gets an iterator that let you iterate the tables and then it provides an inner iterator to interate entities
    pub fn tableIterator(self: *@This(), comptime Components: type) flecs.TableIterator(Components) {
        return flecs.TableIterator(Components).init(flecs.ecs_query_iter(self.world.world, self.query), flecs.ecs_query_next);
    }

    /// allows either a function that takes 1 parameter (a struct with fields that match the components in the query) or multiple paramters
    /// (each param should match the components in the query in order)
    pub fn each(self: *@This(), comptime Function: anytype) void {
        comptime var arg_count = switch (@typeInfo(@TypeOf(Function))) {
            .BoundFn => |func_info| func_info.args.len,
            .Fn => |func_info| func_info.args.len,
            else => std.debug.assert("invalid func"),
        };

        if (arg_count == 1) {
            const Components = switch (@typeInfo(@TypeOf(Function))) {
                .BoundFn => |func_info| func_info.args[1].arg_type.?,
                .Fn => |func_info| func_info.args[0].arg_type.?,
                else => std.debug.assert("invalid func"),
            };

            var iter = self.entityIterator(Components);
            while (iter.next()) |comps| {
                @call(.{ .modifier = .always_inline }, Function, .{comps});
            }
        } else {
            const Components = std.meta.ArgsTuple(@TypeOf(Function));

            var iter = self.entityIterator(Components);
            while (iter.next()) |comps| {
                @call(.{ .modifier = .always_inline }, Function, meta.fieldsTuple(comps));
            }
        }
    }
};