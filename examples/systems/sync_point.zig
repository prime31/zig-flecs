const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

const Position = struct { x: f32, y: f32 };
const Velocity = struct { x: f32, y: f32 };

const SetVelocityCallback = struct{
    pub const name = "SetVelocity";
    pub const run = setVelocity;
    pub const modifiers = .{ q.Filter(Position), q.DontMatch(q.Writeonly(Velocity)) };
};

const MoveCallback = struct {
    position: *Position,
    velocity: *const Velocity,

    pub const name = "Move";
    pub const run = move;
};

const PrintCallback = struct {
    position: *const Position,

    pub const name = "PrintPosition";
    pub const run = print;
};

fn setVelocity(iter: *flecs.Iterator(SetVelocityCallback)) void {
    while(iter.next()) |_| {
        iter.entity().set(&Velocity{.x = 1, .y = 2});
    }
}

fn move(iter: *flecs.Iterator(MoveCallback)) void {
    while (iter.next()) |components| {
        components.position.x += components.velocity.x;
        components.position.y += components.velocity.y;
    }
}

fn print(iter: *flecs.Iterator(PrintCallback)) void {
    while (iter.next()) |components| {
        std.log.debug("{s}: {d}", .{ iter.entity().getName(), components.position });
    }
}

pub fn main() !void {
    var world = flecs.World.init();

    world.registerComponents(.{ Position, Velocity });

    // System that sets velocity using set<T> for entities with Position.
    // While systems are progressing, operations like set<T> are deferred until
    // it is safe to merge. By default this merge happens at the end of the
    // frame, but we can annotate systems to give the scheduler more information
    // about what it's doing, which allows it to insert sync points earlier.
    //
    // The parentheses after Velocity indicate that the component is not used
    // to match entities, while [out] indicates that it is written. A subsequent
    // system that accesses the component will cause the scheduler to insert a
    // sync point.
    //
    // Note that sync points are never necessary/inserted for systems that write
    // components provided by their signature, as these writes directly happen
    // in the ECS storage and are never deferred.
    //
    // The [filter] annotation for Position tells the scheduler that while we
    // want to match entities with Position, we're not interested in reading or
    // writing the component value.

    world.system(SetVelocityCallback, .on_update);

    // This system reads Velocity, which causes the insertion of a sync point.
    world.system(MoveCallback, .on_update);

    // Print resulting Position
    world.system(PrintCallback, .post_update);

    // Create a few test entities for a Position, Velocity query
    const e1 = world.newEntityWithName("e1");
    e1.set(&Position{ .x = 10, .y = 20 });
    e1.set(&Velocity{ .x = 1, .y = 2 });

    const e2 = world.newEntityWithName("e2");
    e2.set(&Position{ .x = 10, .y = 20 });
    e2.set(&Velocity{ .x = 3, .y = 4 });

    // Run systems. Debug logging enables us to see the generated schedule
    _ = flecs.c.ecs_log_set_level(1);
    world.progress(0);
    _ = flecs.c.ecs_log_set_level(-1);

    // Output:
    //  info: pipeline rebuild:
    //  info: | schedule: threading: 0, staging: 1:
    //  info: | | system SetVelocity
    //  info: | | merge
    //  info: | schedule: threading: 0, staging: 1:
    //  info: | | system Move
    //  info: | | system PrintPosition
    //  info: | | merge
    //  e1: {11.000000, 22.000000}
    //  e2: {11.000000, 22.000000}
    //
    // The "merge" lines indicate sync points.
    //
    // Removing the '[out] Velocity()' annotation from the system will remove
    // the first sync point from the schedule.
    //
    // To create the same system with ecs_system_init, do:
    //  ecs_system_init(ecs, &(ecs_system_desc_t) {
    //      .query.filter.terms = {
    //          {
    //              .id = ecs_id(Position),
    //              .inout = EcsInOutFilter
    //          },
    //          {
    //              .id = ecs_id(Velocity),
    //              .inout = EcsOut,
    //              .subj.set.mask = EcsNothing
    //          }
    //      },
    //      .entity = {
    //          .name = "SetVelocity",
    //          .add = {EcsOnUpdate}
    //      },
    //      .callback = SetVelocity
    //  });

    world.deinit();
}
