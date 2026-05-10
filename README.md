# Zig Hello World

[![CI](https://github.com/asemqaffaf/zig/actions/workflows/ci.yml/badge.svg)](https://github.com/asemqaffaf/zig/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

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

## Endpoints

| Path | Response |
|---|---|
| `/` | HTML hello page |
| `/health` | `OK` |

## Project Structure

```
src/
  main.zig     # HTTP listener and request handler
  root.zig     # Library root
  router.zig   # Route handling
examples/
  hello.zig    # Minimal standalone example
docs/
  architecture.md
build.zig
```
