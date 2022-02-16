const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");
const meta = @import("meta.zig");

pub fn EntityIterator(comptime Components: type) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    return struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,
        nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool,

        pub fn init(iter: flecs.ecs_iter_t, nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool) @This() {
            if (@import("builtin").mode == .Debug) {
                const component_info = @typeInfo(Components).Struct;
                inline for (component_info.fields) |field, i| {
                    const is_optional = @typeInfo(field.field_type) == .Optional;
                    const is_readonly = (@typeInfo(field.field_type) == .Pointer and @typeInfo(field.field_type).Pointer.is_const) or (@typeInfo(std.meta.Child(field.field_type)) == .Pointer and @typeInfo(std.meta.Child(field.field_type)).Pointer.is_const);
                    const col_type = meta.FinalChild(field.field_type);
                    const type_entity = utils.componentHandle(col_type).*;

                    // ensure order matches for terms vs struct fields
                    std.debug.assert(iter.terms[i].id == type_entity);

                    // validate readonly (non-ptr types in the struct) matches up with the inout
                    if (is_readonly) std.debug.assert(iter.terms[i].inout == flecs.EcsIn);
                    if (iter.terms[i].inout == flecs.EcsIn) std.debug.assert(is_readonly);

                    // validate optionals (?* types in the struct) mathces up with valid opers
                    if (is_optional) std.debug.assert(iter.terms[i].oper == flecs.EcsOr or iter.terms[i].oper == flecs.EcsOptional);
                    if (iter.terms[i].oper == flecs.EcsOr or iter.terms[i].oper == flecs.EcsOptional) std.debug.assert(is_optional);
                }
            }

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
                // const column_index = if (is_optional) flecs.ecs_iter_find_column(&self.iter, utils.componentHandle(col_type).*) else i;
                const column_index = self.iter.terms[i].index;
                var skip_term = if (is_optional) utils.componentHandle(col_type).* != flecs.ecs_term_id(&self.iter, @intCast(usize, column_index + 1)) else false;

                // note that an OR is actually a single term so ecs_term_is_set will always be true
                // const is_set = flecs.ecs_term_is_set(&self.iter, self.iter.terms[i].index + 1);
                // std.debug.print("---- col_type: {any}, optional: {any}, i: {d}, col_index: {d}, term.index: {d}, type_id: {d}, skip_term: {d}\n", .{ col_type, is_optional, i, column_index, self.iter.terms[i].index, utils.componentHandle(col_type).*, skip_term });
                if (!skip_term) {
                    if (utils.columnOpt(&self.iter, col_type, column_index + 1)) |col| {
                        @field(comps, field.name) = &col[self.index];
                    }
                }
            }

            self.index += 1;
            return comps;
        }
    };
}