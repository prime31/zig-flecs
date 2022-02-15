const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

pub fn TableIterator(comptime Components: type) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    const Columns = meta.TableIteratorData(Components);

    return struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,
        nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool,
        fart: Columns = undefined,

        pub fn init(iter: flecs.ecs_iter_t, nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool) @This() {
            return .{
                .iter = iter,
                .nextFn = nextFn,
                .columns = undefined,
            };
        }
    };
}


