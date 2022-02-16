const builtin = @import("builtin");
const std = @import("std");
const Builder = std.build.Builder;

pub const LibType = enum(i32) {
    static,
    exe_compiled,
};

pub fn build(b: *std.build.Builder) anyerror!void {
    const target = b.standardTargetOptions(.{});

    const examples = [_][2][]const u8{
        [_][]const u8{ "simple", "examples/simple.zig" },
        [_][]const u8{ "raw", "examples/raw.zig" },
        [_][]const u8{ "benchmark", "examples/benchmark.zig" },
        [_][]const u8{ "generator", "examples/generator.zig" },
    };

    for (examples) |example| {
        const name = example[0];
        const source = example[1];

        var exe = b.addExecutable(name, source);
        exe.setBuildMode(b.standardReleaseOptions());

        // for some reason exe_compiled + debug build results in "illegal instruction 4". Investigate at some point.
        linkArtifact(b, exe, target, .exe_compiled, "");

        const run_cmd = exe.run();
        const exe_step = b.step(name, b.fmt("run {s}.zig", .{name}));
        exe_step.dependOn(&run_cmd.step);
    }
}

/// prefix_path is used to add package paths. It should be the the same path used to include this build file
pub fn linkArtifact(b: *Builder, artifact: *std.build.LibExeObjStep, target: std.zig.CrossTarget, lib_type: LibType, comptime prefix_path: []const u8) void {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");

    switch (lib_type) {
        .static => {
            const lib = b.addStaticLibrary("flecs", null);
            lib.setBuildMode(std.builtin.Mode.ReleaseFast);
            lib.setTarget(target);

            compileFlecs(b, lib, target, prefix_path);
            lib.install();

            artifact.linkLibrary(lib);
        },
        .exe_compiled => {
            compileFlecs(b, artifact, target, prefix_path);
        },
    }

    artifact.addPackagePath("flecs", prefix_path ++ "src/flecs.zig");
}

fn compileFlecs(builder: *Builder, exe: *std.build.LibExeObjStep, target: std.zig.CrossTarget, comptime prefix_path: []const u8) void {
    var buildFlags = std.ArrayList([]const u8).init(builder.allocator);
    exe.linkLibC();
    exe.addIncludeDir(prefix_path ++ "flecs");

    if(target.isWindows()) {
        exe.target.abi = std.Target.Abi.msvc;
        exe.linkSystemLibrary("Ws2_32");
        buildFlags.append("-DFLECS_OS_API_IMPL") catch unreachable;
        buildFlags.append("-DECS_TARGET_MSVC") catch unreachable;
    }

    if(exe.build_mode != std.builtin.Mode.Debug) {
        buildFlags.append("-O2") catch unreachable;
    }

    exe.addCSourceFile(prefix_path ++ "flecs/flecs.c", buildFlags.items);
}

