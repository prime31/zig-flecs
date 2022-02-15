const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");

pub fn EntityIdIterator(comptime Components: anytype) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    return struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,
        nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool,

        pub fn init(_: flecs.World, iter: flecs.ecs_iter_t, nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool) @This() {
            if (@import("builtin").mode == .Debug) {
                const component_info = @typeInfo(Components).Struct;
                inline for (component_info.fields) |field, i| {
                    const is_optional = @typeInfo(field.field_type) == .Optional;
                    const is_readonly = (@typeInfo(field.field_type) == .Pointer and @typeInfo(field.field_type).Pointer.is_const) or (@typeInfo(std.meta.Child(field.field_type)) == .Pointer and @typeInfo(std.meta.Child(field.field_type)).Pointer.is_const);
                    const child = std.meta.Child(field.field_type);
                    const col_type = if (is_optional) std.meta.Child(child) else child;
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
                const child = std.meta.Child(field.field_type);
                const col_type = if (is_optional) std.meta.Child(child) else child;

                // TODO: handle readonly with ecs_term_is_readonly? perhaps just for an assert?
                if (is_optional) @field(comps, field.name) = null;
                const column_index = if (is_optional) flecs.ecs_iter_find_column(&self.iter, utils.componentHandle(col_type).*) else i;

                // const is_set = flecs.ecs_term_is_set(&self.iter, i + 1); // Flecs bug?
                // std.debug.print("---- col_type: {any}, optional: {any}, i: {d}, col_index: {d}, is_set: {d}\n", .{ col_type, is_optional, i, column_index, is_set });
                if (utils.columnOpt(&self.iter, col_type, column_index + 1)) |col| {
                    @field(comps, field.name) = &col[self.index];
                }
            }

            self.index += 1;
            return comps;
        }
    };
}