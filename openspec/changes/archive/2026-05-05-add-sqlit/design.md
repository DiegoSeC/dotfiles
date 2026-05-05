## Context

The dotfiles project manages tooling installation and configuration for macOS/Linux. `sqlit` (https://github.com/Maxteabag/sqlit) is a Python-based TUI for SQL databases, installed via `uv tool install sqlit-tui`.

## Goals / Non-Goals

**Goals:**
- Add `sqlit` to the approved tools list
- Document installation via `uv tool install sqlit-tui`
- Include in health checks

**Non-Goals:**
- No configuration files for sqlit (config lives in ~/.config/sqlit/)

## Decisions

- Install via `uv tool install sqlit-tui`, since sqlit is a Python package and uv is already in our toolchain
- No shell aliases or completions added at this time

## Risks / Trade-offs

- [sqlit requires uv to be installed first] → uv is already a core tool in the dotfiles
