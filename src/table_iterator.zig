const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

pub fn TableIterator(comptime Components: type) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    const Columns = meta.TableIteratorData(Components);

    const InnerIterator = struct {
        data: Columns = undefined,
        count: i32,
    };

    return struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,
        nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool,

        pub fn init(iter: flecs.ecs_iter_t, nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool) @This() {
            return .{
                .iter = iter,
                .nextFn = nextFn,
            };
        }

        pub fn next(self: *@This()) ?InnerIterator {
            std.debug.print("--- self.iter.count: {d}\n", .{self.iter.count});
            if (self.index >= self.iter.count) {
                self.index = 0;
                if (!self.nextFn(&self.iter)) return null;
            }

            var iter: InnerIterator = .{ .count = self.iter.count };
            inline for (@typeInfo(Components).Struct.fields) |field, i| {
                const is_optional = @typeInfo(field.field_type) == .Optional;
                const col_type = meta.FinalChild(field.field_type);

                // TODO: handle readonly with ecs_term_is_readonly? perhaps just for an assert?
                if (is_optional) @field(iter.data, field.name) = null;
                const column_index = if (is_optional) flecs.ecs_iter_find_column(&self.iter, flecs.componentHandle(col_type).*) else i;

                // const is_set = flecs.ecs_term_is_set(&self.iter, i + 1); // Flecs bug?
                // std.debug.print("---- col_type: {any}, optional: {any}, i: {d}, col_index: {d}, is_set: {d}\n", .{ col_type, is_optional, i, column_index, is_set });
                if (flecs.columnOpt(&self.iter, col_type, column_index + 1)) |col| {
                    @field(iter.data, field.name) = col;
                }
            }

            self.index += 1;
            return iter;
        }
    };
}


