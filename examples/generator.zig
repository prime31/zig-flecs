const std = @import("std");
const c = @cImport(@cInclude("flecs.h"));

pub fn main() !void {
    std.log.warn("flecs {any}", .{ c });
}
