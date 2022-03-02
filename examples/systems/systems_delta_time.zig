const std = @import("std");
const flecs = @import("flecs");

const EmptyCallback = struct {
    pub const name = "PrintDeltaTime";
    pub const run = printDeltaTime;
};

fn printDeltaTime(iter: *flecs.Iterator(EmptyCallback)) void {
    std.log.debug("delta_time: {d}", .{ iter.iter.delta_time });
}

pub fn main() !void {
    var world = flecs.World.init();

    // Create system that prints delta_time. This system doesn't query for any
    // components which means it won't match any entities, but will still be ran
    // once for each call to ecs_progress.
    world.system(EmptyCallback, .on_update);

    // Call progress with 0.0f for the delta_time parameter. This will cause
    // ecs_progress to measure the time passed since the last frame. The
    // delta_time of the first frame is a best guess (16ms).
    world.progress(0);

    // The following calls should print a delta_time of approximately 100ms
    std.os.nanosleep(0, 100 * 100 * 1000);
    world.progress(0);

    std.os.nanosleep(0, 100 * 100 * 1000);
    world.progress(0);

    world.deinit();
}
