//! Minimal zap example — run with: zig run examples/hello.zig
const std = @import("std");
const zap = @import("zap");

fn handler(r: zap.Request) void {
    r.sendBody("Hello, World!") catch return;
}

pub fn main() !void {
    var listener = zap.HttpListener.init(.{
        .port = 3000,
        .on_request = handler,
        .log = false,
    });
    try listener.listen();
    zap.start(.{ .threads = 1, .workers = 1 });
}
