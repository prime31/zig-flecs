const std = @import("std");
const flecs = @import("flecs.zig");

/// returns the column at index
pub fn column(iter: [*c]const flecs.c.ecs_iter_t, comptime T: type, index: i32) [*]T {
    var col = flecs.c.ecs_term_w_size(iter, @sizeOf(T), index);
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// returns null in the case of column not being present or an invalid index
pub fn columnOpt(iter: [*c]const flecs.c.ecs_iter_t, comptime T: type, index: i32) ?[*]T {
    if (index <= 0) return null;
    var col = flecs.c.ecs_term_w_size(iter, @sizeOf(T), index);
    if (col == null) return null;
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// used with ecs_iter_find_column to fetch data from terms not in the query
pub fn columnNonQuery(iter: [*c]const flecs.c.ecs_iter_t, comptime T: type, index: i32) ?[*]T {
    if (index <= 0) return null;
    var col = flecs.c.ecs_iter_column_w_size(iter, @sizeOf(T), index - 1);
    if (col == null) return null;
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// used when the Flecs API provides untyped data to convert to type. Query/system order_by callbacks are one example.
pub fn componentCast(comptime T: type, val: ?*const anyopaque) *const T {
    return @ptrCast(*const T, @alignCast(@alignOf(T), val));
}
