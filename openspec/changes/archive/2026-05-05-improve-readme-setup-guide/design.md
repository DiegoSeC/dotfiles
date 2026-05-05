## Context

The current README has a verbose Prerequisites section with 7 separate `brew install` commands, mentions Windows support that doesn't exist, and omits several tools actively configured in `.zshrc` and `dot-config/`. The `.zshrc` file references `colorls` and `tmuxifier` which should be replaced with `lsd`. The `checkhealth.sh` script doesn't verify all installed tools.

## Goals / Non-Goals

**Goals:**
- One-command Quick Start: clone, install, deploy in under 30 seconds
- Complete and accurate tool documentation matching actual configuration
- Remove dead references (Windows, colorls, tmuxifier)
- Keep README as the single source of truth for setup

**Non-Goals:**
- No automated install script — the Quick Start uses existing `setup.sh` and `checkhealth.sh`
- No Linux-specific package manager instructions — brew works on Linux too
- No changes to nvim submodule configuration

## Decisions

**Quick Start placement**: At the very top, before Prerequisites. Users who want details can scroll down; users who want speed get it immediately.

**Terminal emulator as optional**: Separated from core tools since users may prefer Wezterm, Ghostty, or another terminal. The Quick Start includes a commented choice.

**colorls → lsd replacement**: `lsd` is already configured in `dot-config/lsd/` and is a more modern, Rust-based replacement. The `.zshrc` alias `ls='colorls -A'` becomes `ls='lsd -A'`.

**Submodule emphasis**: The clone command uses `--recurse-submodules` prominently with a recovery fallback, since a plain clone leaves the nvim config empty.

## Risks / Trade-offs

- [One-liner install is long] → Acceptable; it's copy-paste, not typed manually
- [Ghostty not on Homebrew core] → Use `brew install --cask ghostty` which works via their tap; add a comment noting it
- [checkhealth.sh doesn't check optional tools] → Only core required tools are checked; optional tools (rbenv, ruby) are not verified
