const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

pub fn EntityIterator(comptime Components: type) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    return struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,
        nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool,

        pub fn init(iter: flecs.ecs_iter_t, nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool) @This() {
            meta.validateIterator(Components, iter);
            return .{ .iter = iter, .nextFn = nextFn };
        }

        pub fn next(self: *@This()) ?Components {
            if (self.index >= self.iter.count) {
                self.index = 0;
                if (!self.nextFn(&self.iter)) return null;
            }

            var comps: Components = undefined;
            inline for (@typeInfo(Components).Struct.fields) |field, i| {
                const is_optional = @typeInfo(field.field_type) == .Optional;
                const col_type = meta.FinalChild(field.field_type);

                // TODO: handle readonly with ecs_term_is_readonly? perhaps just for an assert?
                if (is_optional) @field(comps, field.name) = null;
                const column_index = self.iter.terms[i].index;
                var skip_term = if (is_optional) flecs.componentHandle(col_type).* != flecs.ecs_term_id(&self.iter, @intCast(usize, column_index + 1)) else false;

                // note that an OR is actually a single term so ecs_term_is_set will always be true
                // const is_set = flecs.ecs_term_is_set(&self.iter, self.iter.terms[i].index + 1);
                // std.debug.print("---- col_type: {any}, optional: {any}, i: {d}, col_index: {d}, term.index: {d}, type_id: {d}, skip_term: {d}\n", .{ col_type, is_optional, i, column_index, self.iter.terms[i].index, utils.componentHandle(col_type).*, skip_term });
                if (!skip_term) {
                    if (flecs.columnOpt(&self.iter, col_type, column_index + 1)) |col| {
                        @field(comps, field.name) = &col[self.index];
                    }
                }
            }

            self.index += 1;
            return comps;
        }
    };
}