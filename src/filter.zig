const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");
const meta = @import("meta.zig");

pub const Filter = struct {
    world: flecs.World,
    filter: *flecs.c.ecs_filter_t = undefined,

    /// filter iterator that lets you fetch components via get/getOpt
    /// TODO: is this thing necessary? Seems the other iterators are more then capable compared to this thing.
    const FilterIterator = struct {
        iter: flecs.c.ecs_iter_t,
        index: usize = 0,

        pub fn init(iter: flecs.c.ecs_iter_t) @This() {
            return .{ .iter = iter };
        }

        pub fn next(self: *@This()) ?void {
            if (self.index >= self.iter.count) {
                self.index = 0;
                if (!flecs.c.ecs_filter_next(&self.iter)) return null;
            }

            self.index += 1;
        }

        pub fn entity(self: *@This()) flecs.Entity {
            return flecs.Entity.init(flecs.World{ .world = self.iter.world }, self.iter.entities[self.index - 1]);
        }

        /// gets the index into the terms array of this type
        fn getTermIndex(self: @This(), comptime T: type) usize {
            const comp_id = meta.componentHandle(T).*;
            var i: usize = 0;
            while (i < self.iter.term_count) : (i += 1) {
                if (self.iter.terms[i].id == comp_id) return i;
            }
            unreachable;
        }

        /// gets a term that is not optional
        pub fn get(self: @This(), comptime T: type) *T {
            const index = self.getTermIndex(T);
            const column_index = self.iter.terms[index].index;
            return &utils.column(&self.iter, T, column_index + 1)[self.index - 1];
        }

        /// gets a term that is not optional but is readonly
        pub fn getConst(self: @This(), comptime T: type) *const T {
            const index = self.getTermIndex(T);
            const column_index = self.iter.terms[index].index;
            std.debug.assert(flecs.c.ecs_term_is_readonly(&self.iter, @intCast(i32, index + 1)));

            // const column_index = flecs.c.ecs_iter_find_column(&self.iter, meta.componentHandle(T).*);
            return &utils.column(&self.iter, T, column_index + 1)[self.index - 1];
        }

        /// gets a term that is optional. Returns null if it isnt found.
        pub fn getOpt(self: @This(), comptime T: type) ?*T {
            const index = self.getTermIndex(T);
            const column_index = self.iter.terms[index].index;
            var skip_term = meta.componentHandle(T).* != flecs.c.ecs_term_id(&self.iter, @intCast(usize, column_index + 1));
            if (skip_term) return null;

            if (utils.columnOpt(&self.iter, T, column_index + 1)) |col| {
                return &col[self.index - 1];
            }
            return null;
        }

        /// gets a term that is optional and readonly. Returns null if it isnt found.
        pub fn getConstOpt(self: @This(), comptime T: type) ?*const T {
            const index = self.getTermIndex(T);
            std.debug.assert(flecs.c.ecs_term_is_readonly(&self.iter, @intCast(i32, index + 1)));

            const column_index = self.iter.terms[index].index;
            var skip_term = meta.componentHandle(T).* != flecs.c.ecs_term_id(&self.iter, @intCast(usize, column_index + 1));
            if (skip_term) return null;

            if (utils.columnOpt(&self.iter, T, column_index + 1)) |col| {
                return &col[self.index - 1];
            }
            return null;
        }
    };

    pub fn init(world: flecs.World, desc: *flecs.c.ecs_filter_desc_t) @This() {
        var filter = @This(){
            .world = world,
            .filter = std.heap.c_allocator.create(flecs.c.ecs_filter_t) catch unreachable,
        };
        std.debug.assert(flecs.c.ecs_filter_init(world.world, filter.filter, desc) == 0);
        return filter;
    }

    pub fn deinit(self: *@This()) void {
        flecs.c.ecs_filter_fini(self.filter);
        std.heap.c_allocator.destroy(self.filter);
    }

    pub fn asString(self: *@This()) [*c]u8 {
        return flecs.c.ecs_filter_str(self.world.world, self.filter);
    }

    pub fn filterIterator(self: *@This()) FilterIterator {
        return FilterIterator.init(flecs.c.ecs_filter_iter(self.world.world, self.filter));
    }

    /// gets an iterator that let you iterate the tables and then it provides an inner iterator to interate entities
    pub fn tableIterator(self: *@This(), comptime Components: type) flecs.TableIterator(Components) {
        temp_iter_storage = flecs.c.ecs_filter_iter(self.world.world, self.filter);
        return flecs.TableIterator(Components).init(&temp_iter_storage, flecs.c.ecs_filter_next);
    }

    // storage for the iterator so it can be passed by reference. Do not in-flight two Filters at once!
    var temp_iter_storage: flecs.c.ecs_iter_t = undefined;

    /// gets an iterator that iterates all matched entities from all tables in one iteration. Do not create more than one at a time!
    pub fn iterator(self: *@This(), comptime Components: type) flecs.Iterator(Components) {
        temp_iter_storage = flecs.c.ecs_filter_iter(self.world.world, self.filter);
        return flecs.Iterator(Components).init(&temp_iter_storage, flecs.c.ecs_filter_next);
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
