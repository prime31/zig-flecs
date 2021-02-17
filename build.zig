const builtin = @import("builtin");
const std = @import("std");
const Builder = std.build.Builder;

pub const LibType = enum(i32) {
    static,
    exe_compiled,
};

pub fn build(b: *std.build.Builder) anyerror!void {
    // const exe = b.addStaticLibrary("JunkLib", null);
    // linkArtifact(b, exe, b.standardTargetOptions(.{}), .static, "");
    // exe.install();
    const target = b.standardTargetOptions(.{});

    const examples = [_][2][]const u8{
        [_][]const u8{ "simple", "examples/simple.zig" },
        [_][]const u8{ "benchmark", "examples/benchmark.zig" },
        [_][]const u8{ "generator", "examples/generator.zig" },
    };

    for (examples) |example, i| {
        const name = if (i == 0) "ecs" else example[0];
        const source = example[1];

        var exe = b.addExecutable(name, source);
        exe.setBuildMode(b.standardReleaseOptions());

        // only required if doing @cImport to generate a cimport.zig file
        exe.addIncludeDir("src/flecs/include");
        // for some reason exe_compiled + debug build results in "illegal instruction 4". Investigate at some point.
        linkArtifact(b, exe, target, .exe_compiled, "");

        const run_cmd = exe.run();
        const exe_step = b.step(name, b.fmt("run {}.zig", .{name}));
        exe_step.dependOn(&run_cmd.step);

        // first element in the list is added as "run" so "zig build run" works
        if (i == 0) {
            exe.setOutputDir("zig-cache/bin");
            const run_exe_step = b.step("run", b.fmt("run {}.zig", .{name}));
            run_exe_step.dependOn(&run_cmd.step);
        }
    }
}

/// prefix_path is used to add package paths. It should be the the same path used to include this build file
pub fn linkArtifact(b: *Builder, artifact: *std.build.LibExeObjStep, target: std.build.Target, lib_type: LibType, comptime prefix_path: []const u8) void {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");

    switch (lib_type) {
        .static => {
            const lib = b.addStaticLibrary("flecs", null);
            lib.setBuildMode(builtin.Mode.ReleaseFast);
            lib.setTarget(target);

            compileFlecs(b, lib, target, prefix_path);
            lib.install();

            artifact.linkLibrary(lib);
        },
        .exe_compiled => {
            compileFlecs(b, artifact, target, prefix_path);
        },
    }

    // artifact.addPackagePath("flecs_manual", std.fs.path.join(b.allocator, &[_][]const u8{ prefix_path, "flecs_manual.zig" }) catch unreachable);
    artifact.addPackagePath("flecs", prefix_path ++ "src/flecs.zig");
}

fn compileFlecs(b: *Builder, exe: *std.build.LibExeObjStep, target: std.build.Target, comptime prefix_path: []const u8) void {
    exe.linkLibC();
    exe.addIncludeDir("flecs");

    const cflags = &[_][]const u8{ "-DFLECS_IMPL", "-DFALSE=0", "-DTRUE=1" };
    exe.addCSourceFile(prefix_path ++ "src/flecs/flecs.c", cflags);
    // addSourceFiles(b, exe, "flecs/src");
}

/// recursively adds all .c files to the exe
fn addSourceFiles(b: *Builder, exe: *std.build.LibExeObjStep, src_dir: []const u8) void {
    const cflags = &[_][]const u8{ "-DFLECS_IMPL", "-DFALSE=0", "-DTRUE=1" };
    var dir = std.fs.cwd().openDir(src_dir, .{}) catch unreachable;
    defer dir.close();

    var iter = dir.iterate();
    while (iter.next() catch unreachable) |entry| {
        if (entry.kind == .Directory) {
            const dir_path = std.fs.path.join(b.allocator, &[_][]const u8{ src_dir, entry.name }) catch unreachable;
            addSourceFiles(b, exe, dir_path);
        } else if (std.mem.endsWith(u8, entry.name, ".c")) {
            const file = std.fs.path.join(b.allocator, &[_][]const u8{ src_dir, entry.name }) catch unreachable;
            exe.addCSourceFile(file, cflags);
        }
    }
}
