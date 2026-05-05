## Why

Environment variable exports are currently in `.zshrc`, which only runs for interactive shells. This means non-interactive shells (scripts, tmux, etc.) don't get `XDG_CONFIG_HOME`, `GEM_HOME`, or other env vars. The XDG base directory spec recommends setting these in `.zshenv` so they're available everywhere.

## What Changes

- Create `.zshenv` with XDG base directory exports (`XDG_CONFIG_HOME`, `XDG_CACHE_HOME`, `XDG_DATA_HOME`)
- Move `GEM_HOME` and PATH export from `.zshrc` to `.zshenv`
- Move `MANPAGER` export from `.zshrc` to `.zshenv`
- Move `.env` file loading from `.zshrc` to `.zshenv`
- Clean up `.zshrc` to use the XDG vars directly without defaults

## Capabilities

### New Capabilities
- `zsh-env-files`: Proper separation of environment variables (`.zshenv`) from interactive shell config (`.zshrc`)

### Modified Capabilities
<!-- No existing specs to modify -->

## Impact

- `.zshenv`: New file with environment variable exports
- `.zshrc`: Remove env exports, simplify XDG references
