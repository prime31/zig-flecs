const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");

/// void {} is an allowed T for Terms that iterate only the entities. Void is requiried when using initWithPair
pub fn Term(comptime T: anytype) type {
    std.debug.assert(@TypeOf(T) == type or @TypeOf(T) == void);

    return struct {
        const Self = @This();

        world: flecs.World,
        term: flecs.c.ecs_term_t,

        const Iterator = struct {
            iter: flecs.c.ecs_iter_t,
            index: usize = 0,

            pub fn init(iter: flecs.c.ecs_iter_t) Iterator {
                return .{ .iter = iter };
            }

            pub fn next(self: *Iterator) ?*T {
                if (self.index >= self.iter.count) {
                    self.index = 0;
                    if (!flecs.c.ecs_term_next(&self.iter)) return null;
                }

                self.index += 1;
                const array = utils.column(&self.iter, T, 1);
                return &array[self.index - 1];
            }

            pub fn entity(self: *Iterator) flecs.Entity {
                return flecs.Entity.init(self.iter.world.?, self.iter.entities[self.index - 1]);
            }
        };

        const EntityIterator = struct {
            iter: flecs.c.ecs_iter_t,
            index: usize = 0,

            pub fn init(iter: flecs.c.ecs_iter_t) EntityIterator {
                return .{ .iter = iter };
            }

            pub fn next(self: *EntityIterator) ?flecs.Entity {
                if (self.index >= self.iter.count) {
                    self.index = 0;
                    if (!flecs.c.ecs_term_next(&self.iter)) return null;
                }

                self.index += 1;
                return flecs.Entity.init(self.iter.world.?, self.iter.entities[self.index - 1]);
            }
        };

        pub fn init(world: flecs.World) Self {
            var term = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = world.componentId(T) });
            return .{ .world = world, .term = term };
        }

        pub fn initWithPair(world: flecs.World, pair: flecs.EntityId) Self {
            var term = std.mem.zeroInit(flecs.c.ecs_term_t, .{ .id = pair });
            return .{ .world = world, .term = term };
        }

        pub fn deinit(self: *Self) void {
            flecs.c.ecs_term_fini(&self.term);
        }

        // only export each if we have an actualy type T
        pub usingnamespace if (@TypeOf(T) == type) struct {
            pub fn iterator(self: *Self) Iterator {
                return Iterator.init(flecs.c.ecs_term_iter(self.world.world, &self.term));
            }

            pub fn each(self: *Self, function: fn (flecs.Entity, *T) void) void {
                var iter = self.iterator();
                while (iter.next()) |comp| {
                    function(iter.entity(), comp);
                }
            }
        } else struct {
            pub fn iterator(self: *Self) EntityIterator {
                return EntityIterator.init(flecs.c.ecs_term_iter(self.world.world, &self.term));
            }
        };

            pub fn entityIterator(self: *Self) EntityIterator {
                return EntityIterator.init(flecs.c.ecs_term_iter(self.world.world, &self.term));
            }
    };
}
