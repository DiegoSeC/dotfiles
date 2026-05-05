## Context

`.zshrc` currently contains environment variable exports (`GEM_HOME`, `MANPAGER`, `.env` loading) and uses XDG defaults inline (`${XDG_CACHE_HOME:-$HOME/.cache}`). Zsh sources `.zshenv` for ALL shell invocations (interactive, non-interactive, scripts), while `.zshrc` only runs for interactive shells. This means environment variables set in `.zshrc` are not available to scripts or non-interactive contexts.

## Goals / Non-Goals

**Goals:**
- Set `XDG_CONFIG_HOME`, `XDG_CACHE_HOME`, `XDG_DATA_HOME` in `.zshenv`
- Move all env exports from `.zshrc` to `.zshenv`
- Simplify `.zshrc` to reference XDG vars directly without defaults

**Non-Goals:**
- No changes to shell options, aliases, or plugin loading (stay in `.zshrc`)
- No changes to `brew shellenv` (stays in `.zshrc` as it's interactive-only)

## Decisions

**Guard checks in `.zshenv`**: The Ruby and bat checks will run in `.zshenv` which executes for every shell invocation including scripts. This is acceptable since the `which`/`command -v` checks are fast and the guards prevent errors when tools aren't installed.

**XDG defaults in `.zshenv`**: Setting XDG vars with defaults (`${XDG_CACHE_HOME:-$HOME/.cache}`) ensures they're always available, so `.zshrc` and other configs can reference `$XDG_CACHE_HOME` directly.

## Risks / Trade-offs

- [`.zshenv` runs for all shell types] → All content must be side-effect-free exports; no interactive-only code
