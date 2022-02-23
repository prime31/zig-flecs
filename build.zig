const builtin = @import("builtin");
const std = @import("std");
const Builder = std.build.Builder;

pub const LibType = enum(i32) {
    static,
    exe_compiled,
};

pub fn build(b: *std.build.Builder) anyerror!void {
    const target = b.standardTargetOptions(.{});

    const examples = getAllExamples(b, "examples");

    const examples_step = b.step("all_examples", "build all examples");
    b.default_step.dependOn(examples_step);

    for (examples) |example| {
        const name = example[0];
        const source = example[1];

        var exe = b.addExecutable(name, source);
        exe.setTarget(target);
        exe.setOutputDir("zig-cache/bin");

        if (!std.mem.eql(u8, name, "generator")) {
            exe.setBuildMode(b.standardReleaseOptions());
            examples_step.dependOn(&exe.step);
            exe.install();
        }

        // for some reason exe_compiled + debug build results in "illegal instruction 4". Investigate at some point.
        linkArtifact(b, exe, target, if (target.isWindows()) .static else .exe_compiled, "");

        const run_cmd = exe.run();
        const exe_step = b.step(name, b.fmt("run {s}.zig", .{name}));
        exe_step.dependOn(&run_cmd.step);
    }

    // only mac and linux get the update_flecs command
    if (!target.isWindows()) {
        var exe = b.addSystemCommand(&[_][]const u8{ "zsh", ".vscode/update_flecs.sh" });
        const exe_step = b.step("update_flecs", b.fmt("updates Flecs.h/c and runs translate-c", .{}));
        exe_step.dependOn(&exe.step);
    }

    const exe_tests = b.addTest("src/tests.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(b.standardReleaseOptions());
    linkArtifact(b, exe_tests, target, if (target.isWindows()) .static else .exe_compiled, "");

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
}

fn getAllExamples(b: *std.build.Builder, root_directory: []const u8) [][2][]const u8 {
    var list = std.ArrayList([2][]const u8).init(b.allocator);

    var recursor = struct {
        fn search(alloc: std.mem.Allocator, directory: []const u8, filelist: *std.ArrayList([2][]const u8)) void {
            var dir = std.fs.cwd().openDir(directory, .{ .iterate = true }) catch unreachable;
            defer dir.close();

            var iter = dir.iterate();
            while (iter.next() catch unreachable) |entry| {
                if (entry.kind == .File) {
                    if (std.mem.endsWith(u8, entry.name, ".zig")) {
                        const abs_path = std.fs.path.join(alloc, &[_][]const u8{ directory, entry.name }) catch unreachable;
                        const name = std.fs.path.basename(abs_path);
                        
                        filelist.append([2][]const u8 {name[0..name.len - 4], abs_path}) catch unreachable;
                    }
                } else if (entry.kind == .Directory) {
                    const abs_path = std.fs.path.join(alloc, &[_][]const u8{ directory, entry.name }) catch unreachable;
                    search(alloc, abs_path, filelist);
                }
            }
        }
    }.search;

    recursor(b.allocator, root_directory, &list);

    return list.toOwnedSlice();
}

/// prefix_path is used to add package paths. It should be the the same path used to include this build file
pub fn linkArtifact(b: *Builder, artifact: *std.build.LibExeObjStep, target: std.zig.CrossTarget, lib_type: LibType, comptime prefix_path: []const u8) void {
    if (prefix_path.len > 0 and !std.mem.endsWith(u8, prefix_path, "/")) @panic("prefix-path must end with '/' if it is not empty");

    switch (lib_type) {
        .static => {
            const lib = b.addStaticLibrary("flecs", null);
            lib.setBuildMode(std.builtin.Mode.ReleaseFast);
            lib.setTarget(target);

            if (target.isWindows()) artifact.target.abi = std.Target.Abi.msvc;
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

fn compileFlecs(b: *Builder, exe: *std.build.LibExeObjStep, target: std.zig.CrossTarget, comptime prefix_path: []const u8) void {
    exe.linkLibC();
    exe.addIncludeDir(prefix_path ++ "src/c");

    var buildFlags = std.ArrayList([]const u8).init(b.allocator);
    if (target.isWindows()) {
        exe.target.abi = std.Target.Abi.msvc;
        exe.linkSystemLibrary("Ws2_32");

        buildFlags.append("-DFLECS_OS_API_IMPL") catch unreachable;
        buildFlags.append("-DECS_TARGET_MSVC") catch unreachable;

        if (exe.build_mode != std.builtin.Mode.Debug) {
            buildFlags.append("-O2") catch unreachable;
        } else {
            buildFlags.append("-g") catch unreachable;
        }
    }

    exe.addCSourceFile(prefix_path ++ "src/c/flecs.c", buildFlags.items);
}
