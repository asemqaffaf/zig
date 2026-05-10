const std = @import("std");
const build = std.build;

const target = build.standardTargetOptions();
const optimize = build.standardOptimizeOptions();

// Create the executable
const exe = build.exe("hello-world", "src/main.zig");

// Add zap as a dependency
const zapp = exe.addDependency("zap", .{
    .target = target,
    .optimize = optimize,
    .openssl = false, // set to true to enable TLS support
});

// Add the "zap" import
exe.addImport("zap", zapp.module("zap"));

// Finalize the build
exe.install();
