const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");

// include all files with tests
comptime {
    _ = @import("entity.zig");
    _ = @import("filter.zig");
    _ = @import("flecs.zig");
    _ = @import("iterator.zig");
    _ = @import("meta.zig");
    _ = @import("query_builder.zig");
    _ = @import("query.zig");
    _ = @import("system_builder.zig");
    _ = @import("term.zig");
    _ = @import("type_store.zig");
    _ = @import("utils.zig");
    _ = @import("world.zig");
}


pub const V = struct { x: f32, y: f32 };
pub const P = struct { x: f32, y: f32 };
pub const A = struct { x: f32, y: f32 };

test "type component order doesnt matter" {
    var world = flecs.World.init();
    defer world.deinit();

    const t1 = world.newTypeWithName("Type", .{ V, P, A });
    const t2 = world.newTypeWithName("Type", .{ P, V, A });
    try std.testing.expect(t1 == t2);

    const t3 = world.newType(.{ V, P, A });
    const t4 = world.newType(.{ P, V, A });
    try std.testing.expect(t3 == t4);
}