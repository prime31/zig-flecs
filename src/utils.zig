const std = @import("std");
const flecs = @import("flecs.zig");

/// registered component handle cache
pub fn componentHandle(comptime T: type) *flecs.EntityId {
    _ = T;
    return &(struct {
        pub var handle: flecs.EntityId = std.math.maxInt(u64);
    }.handle);
}

pub fn column(iter: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) [*]T {
    var col = flecs.ecs_term_w_size(iter, @sizeOf(T), index);
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// returns null in the case of column not being present. We need this because we cant check the column_index at runtime due to a zig
/// bug thinking it is comptime known only.
pub fn columnOpt(iter: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) ?[*]T {
    if (index <= 0) return null;
    var col = flecs.ecs_term_w_size(iter, @sizeOf(T), index);
    if (col == null) return null;
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// used with ecs_iter_find_column to fetch data from terms not in the query
pub fn columnNonQuery(iter: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) ?[*]T {
    if (index <= 0) return null;
    var col = flecs.ecs_iter_column_w_size(iter, @sizeOf(T), index - 1);
    if (col == null) return null;
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}