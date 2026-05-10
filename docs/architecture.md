# Architecture

## Overview

```
Client → facil.io (C) → zap (Zig wrapper) → on_request handler
```

## Components

- **main.zig** — entry point, sets up `HttpListener` and starts the event loop
- **facil.io** — high-performance C event loop (bundled with zap)
- **zap** — thin Zig wrapper around facil.io

## Threading Model

`zap.start` accepts `threads` and `workers`:
- `threads` — number of I/O threads
- `workers = 1` — single worker allows sharing state across threads without locks
