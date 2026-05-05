## Why

Running `stow .` attempts to symlink `dot-config/opencode`, `dot-config/openspec`, `dot-config/gh`, and `dot-config/github-copilot` into `~/.config/`. These folders contain local/private configuration or are gitignored, and symlinking them causes errors or overwrites personal credentials.

## What Changes

- Update `setup.sh` to exclude `opencode`, `openspec`, `gh`, and `github-copilot` from stow
- Use `--ignore` flags or explicit package stowing to prevent these directories from being symlinked

## Capabilities

### New Capabilities
- `stow-excludes`: Configuration to exclude specific dot-config subdirectories from stow deployment

### Modified Capabilities
<!-- No existing specs to modify -->

## Impact

- `setup.sh`: Modified to exclude unnecessary packages from stow
