const std = @import("std");
const zap = @import("zap");

pub fn route(r: zap.Request) void {
    const path = r.path orelse "/";
    if (std.mem.eql(u8, path, "/health")) {
        r.sendBody("OK") catch return;
    } else {
        r.sendBody("<html><body><h1>Hello from ZAP!</h1></body></html>") catch return;
    }
}
