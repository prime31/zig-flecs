const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");

pub fn Term(comptime T: type) type {
    return struct {
        world: flecs.World,
        term: flecs.c.ecs_term_t,

        const Iterator = struct {
            iter: flecs.c.ecs_iter_t,
            index: usize = 0,

            pub fn init(iter: flecs.c.ecs_iter_t) @This() {
                return .{ .iter = iter };
            }

            pub fn next(self: *@This()) ?*T {
                if (self.index >= self.iter.count) {
                    self.index = 0;
                    if (!flecs.c.ecs_term_next(&self.iter)) return null;
                }

                self.index += 1;
                const array = utils.column(&self.iter, T, 1);
                return &array[self.index - 1];
            }

            pub fn entity(self: *@This()) flecs.Entity {
                return flecs.Entity.init(self.iter.world.?, self.iter.entities[self.index - 1]);
            }
        };

        pub fn init(world: flecs.World) @This() {
            var term = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = world.componentId(T) });
            return .{ .world = world, .term = term };
        }

        pub fn deinit(self: *@This()) void {
            flecs.c.ecs_term_fini(&self.term);
        }

        pub fn iterator(self: *@This()) Iterator {
            return Iterator.init(flecs.c.ecs_term_iter(self.world.world, &self.term));
        }

        pub fn each(self: *@This(), function: fn (flecs.Entity, *T) void) void {
            var iter = self.iterator();
            while (iter.next()) |comp| {
                function(iter.entity(), comp);
            }
        }
    };
}
