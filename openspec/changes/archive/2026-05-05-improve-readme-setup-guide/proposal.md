## Why

The README installation guide is fragmented and hard to follow. Prerequisites are spread across multiple `brew install` commands, Windows is mentioned but unsupported, and several configured tools are undocumented. Additionally, `colorls` and `tmuxifier` are referenced in `.zshrc` but should be replaced with `lsd` since we already configure `lsd`.

## What Changes

- Add a Quick Start section with a single copy-paste flow: clone (with submodules), install tools, deploy
- Remove all Windows references — this repo is macOS and Linux only
- Consolidate prerequisites into a one-liner for core tools
- Add terminal emulator as an optional step (wezterm or ghostty)
- Add submodule recovery instructions for users who cloned without `--recurse-submodules`
- Document all missing tools: `zoxide`, `lazygit`, `lsd`, `cargo`, `node`, `tree-sitter-cli`
- Add `powerlevel10k` as a Zsh theme, plus `zsh-vi-mode` and `zsh-completions` plugins
- Remove `colorls` and `tmuxifier` references from `.zshrc` and README
- Update `checkhealth.sh` to verify `zoxide`, `lazygit`, and `lsd`
- Add optional prerequisites section for `rbenv` and `ruby`

## Capabilities

### New Capabilities
- `dotfiles-setup`: Quick start guide with clone, install, and deploy flow
- `tool-documentation`: Complete tool inventory with installation instructions and links

### Modified Capabilities
<!-- No existing specs to modify -->

## Impact

- `README.md`: Significant rewrite — new Quick Start, reorganized sections, added/removed tools
- `.zshrc`: Remove `colorls` and `tmuxifier` references, add `lsd` alias
- `checkhealth.sh`: Add `zoxide`, `lazygit`, `lsd` to required tools list
