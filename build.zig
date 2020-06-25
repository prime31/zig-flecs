const builtin = @import("builtin");
const std = @import("std");
const Builder = std.build.Builder;

pub const LibType = enum(i32) {
    static,
    dynamic, // requires DYLD_LIBRARY_PATH to point to the dylib path
    exe_compiled,
};

pub fn build(b: *std.build.Builder) anyerror!void {
    // const exe = b.addStaticLibrary("JunkLib", null);
    // linkArtifact(b, exe, b.standardTargetOptions(.{}), .static, "");
    // exe.install();
    const target = b.standardTargetOptions(.{});

    const examples = [_][2][]const u8{
        [_][]const u8{ "benchmark", "examples/benchmark.zig" },
        [_][]const u8{ "simple", "examples/simple.zig" },
    };

    for (examples) |example, i| {
        const name = if (i == 0) "ecs" else example[0];
        const source = example[1];

        var exe = b.addExecutable(name, source);
        exe.setBuildMode(b.standardReleaseOptions());

        // only required if doing @cImport to generate a cimport.zig file
        exe.addIncludeDir("flecs/include");
        // for some reason exe_compiled + debug build results in "illegal instruction 4". Investigate at some point.
        linkArtifact(b, exe, target, .static, "src");

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

/// rel_path is used to add package paths. It should be the the same path used to include this build file
pub fn linkArtifact(b: *Builder, artifact: *std.build.LibExeObjStep, target: std.build.Target, lib_type: LibType, rel_path: []const u8) void {
    switch (lib_type) {
        .static => {
            const lib = b.addStaticLibrary("flecs", null);
            lib.setBuildMode(builtin.Mode.ReleaseFast);
            lib.setTarget(target);

            compileFlecs(b, lib, target);
            lib.install();

            artifact.linkLibrary(lib);
        },
        .dynamic => {
            @panic("not implemented");
        },
        .exe_compiled => {
            compileFlecs(b, artifact, target);
        },
    }

    // artifact.addPackagePath("flecs_manual", std.fs.path.join(b.allocator, &[_][]const u8{ rel_path, "flecs_manual.zig" }) catch unreachable);
    artifact.addPackagePath("flecs", std.fs.path.join(b.allocator, &[_][]const u8{ rel_path, "flecs.zig" }) catch unreachable);
}

fn compileFlecs(b: *Builder, exe: *std.build.LibExeObjStep, target: std.build.Target) void {
    exe.linkLibC();
    exe.addIncludeDir("flecs/include");
    addSourceFiles(b, exe, "flecs/src");
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