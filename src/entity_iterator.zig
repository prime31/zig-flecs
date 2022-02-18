const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

/// uses a TableIterator under the hood. Provides a per-entity iteration vs the per-table iteration of TableIterator
pub fn EntityIterator(comptime Components: type) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    return struct {
        table_iter: flecs.TableIterator(Components),
        inner_iter: ?flecs.TableIterator(Components).InnerIterator = null,
        index: usize = 0,

        pub fn init(table_iter: flecs.TableIterator(Components)) @This() {
            return .{ .table_iter = table_iter };
        }

        pub fn next(self: *@This()) ?Components {
            // outer check for when we need to see if there is another table to iterate
            if (self.inner_iter == null) {
                self.inner_iter = self.table_iter.next();
                if (self.inner_iter == null) return null;
                self.index = 0;
            }

            var comps: Components = undefined;
            inline for (@typeInfo(Components).Struct.fields) |field| {
                var column = @field(self.inner_iter.?.data, field.name);

                // for optionals, we have to unwrap the column since it is also optional
                if (@typeInfo(field.field_type) == .Optional) {
                    if (column) |col| {
                        @field(comps, field.name) = &col[self.index];
                    } else {
                        @field(comps, field.name) = null;
                    }
                } else {
                    @field(comps, field.name) = &column[self.index];
                }
            }

            self.index += 1;

            // check for iteration of the current tables completion. if its done null the inner_iter so we fetch the next one when called again
            if (self.index == self.inner_iter.?.count) self.inner_iter = null;

            return comps;
        }
    };
}
