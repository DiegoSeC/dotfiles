## Context

The `.tmux.conf` manages tmux configuration including plugins, theming via catppuccin, status bar layout, and pane/window styling. Currently the config has:
- Syntax errors in style strings (spaces after commas)
- Incorrect plugin ordering (TPM not first)
- A broken bootstrap sequence where catppuccin is sourced before TPM installs it
- Legacy tmux options that have modern equivalents
- Redundant settings that have no effect

## Goals / Non-Goals

**Goals:**
- Fix all syntax errors so tmux starts without warnings
- Ensure correct plugin loading order (TPM first, catppuccin after bootstrap)
- Modernize deprecated options where safe
- Remove dead/redundant configuration
- Maintain all existing visual behavior and theme settings

**Non-Goals:**
- No new plugins or features
- No changes to the catppuccin frappe theme
- No changes to key bindings or status bar layout
- No changes to window/pane behavior

## Decisions

**1. Plugin ordering: TPM first**
TPM must be the first `@plugin` entry so it can properly manage all subsequent plugins. Moving it from position 3 to position 1.

**2. Catppuccin `run` after TPM bootstrap**
The `run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux` command must execute after TPM has installed the plugin. The bootstrap block (lines 64-65) clones TPM and runs install. The catppuccin `run` should be moved after this block but before the status bar configuration that depends on `@thm_*` variables.

**3. `terminal-overrides` → `terminal-features`**
Replace `set-option -g terminal-overrides ',xterm-256color:RGB'` with `set-option -ga terminal-features ",xterm-256color:RGB"`. This is the modern tmux 3.2+ approach. The `-ga` flag appends rather than replaces, preserving any default features.

**4. Remove redundant pane border styles**
Since `@catppuccin_pane_border_status "off"` disables pane border display, the `pane-active-border-style` and `pane-border-style` settings at lines 78-79 have no visual effect and are removed.

**5. Remove commented prefix bindings**
Lines 13-14 (`# set -g prefix ^a` / `# unbind ^b`) are commented out and serve no purpose. They are removed for clarity.

## Risks / Trade-offs

| Risk | Mitigation |
|------|------------|
| Moving catppuccin `run` after bootstrap may delay theme loading on first run | Acceptable — theme loads correctly on second start, which is unavoidable without pre-installing plugins |
| `terminal-features` with `-ga` may duplicate features if already set | tmux deduplicates internally; no practical impact |
| Removing redundant pane border styles could affect future config changes | These settings are currently no-ops; can be re-added if pane borders are re-enabled later |
