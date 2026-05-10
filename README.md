# Zig Hello World

A minimal HTTP server built with [Zig](https://ziglang.org/) and [zap](https://github.com/zigzap/zap) — a blazing fast web framework for Zig backed by [facil.io](https://facil.io/).

## What it does

Starts an HTTP server on port `3000` that responds with a simple HTML page.

## Requirements

- [Zig](https://ziglang.org/download/) `0.12+`

## Run

```bash
zig build run
```

Then open [http://localhost:3000](http://localhost:3000).

## Project Structure

```
src/
  main.zig   # HTTP listener and request handler
  root.zig   # Library root
build.zig    # Build configuration
```
