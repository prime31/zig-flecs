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

            var index: usize = 0;
            var comps: Components = undefined;
            inline for (@typeInfo(Components).Struct.fields) |field| {
                // skip filters since they arent returned when we iterate
                while (self.iter.terms[index].inout == flecs.EcsInOutFilter) : (index += 1) {}

                const is_optional = @typeInfo(field.field_type) == .Optional;
                const col_type = meta.FinalChild(field.field_type);
                if (meta.isConst(field.field_type)) std.debug.assert(flecs.ecs_term_is_readonly(&self.iter, @intCast(i32, index) + 1));

                if (is_optional) @field(comps, field.name) = null;
                const column_index = self.iter.terms[index].index;
                var skip_term = if (is_optional) meta.componentHandle(col_type).* != flecs.ecs_term_id(&self.iter, @intCast(usize, column_index + 1)) else false;

                // note that an OR is actually a single term!
                // const is_set = flecs.ecs_term_is_set(&self.iter, self.iter.terms[i].index + 1);
                // const term_id = flecs.ecs_term_id(&self.iter, @intCast(usize, column_index + 1));
                // std.debug.print("---- col_type: {any}, optional: {any}, i: {d}, col_index: {d}, term.index: {d}, type_id: {d}, skip_term: {d}, term_id: {d}\n", .{ col_type, is_optional, index, column_index, self.iter.terms[index].index, meta.componentHandle(col_type).*, skip_term, term_id });
                if (!skip_term) {
                    if (flecs.columnOpt(&self.iter, col_type, column_index + 1)) |col| {
                        @field(comps, field.name) = &col[self.index];
                    }
                }
                index += 1;
            }

            self.index += 1;
            return comps;
        }
    };
}