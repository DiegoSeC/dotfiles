## Why

The `.tmux.conf` has multiple syntax errors, incorrect plugin loading order, and a broken bootstrap sequence that causes errors on first run. These issues degrade reliability and may cause unexpected behavior when tmux starts.

## What Changes

- Fix malformed style syntax (spaces after commas in `#[...]` strings on lines 57, 59)
- Reorder TPM plugin declaration to be first in the plugin list
- Move catppuccin `run` command after TPM bootstrap to prevent first-run errors
- Replace legacy `terminal-overrides` with modern `terminal-features` (tmux 3.2+)
- Remove redundant pane border style settings that have no effect when borders are disabled
- Clean up commented-out prefix key bindings that add noise

## Capabilities

### New Capabilities
- `tmux-config`: Core tmux configuration including plugin management, theming, status bar, and key bindings

### Modified Capabilities
<!-- No existing specs to modify -->

## Impact

- Affected files: `.tmux.conf`
- No breaking changes — all fixes are corrections to existing intended behavior
- Plugin loading order change may affect first-run experience (improves it)
