## 1. Remove deprecated tools from .zshrc

- [x] 1.1 Remove `colorls` alias and tab_complete.sh source from `.zshrc`
- [x] 1.2 Remove `tmuxifier` PATH export and init from `.zshrc`
- [x] 1.3 Add `lsd` alias (`alias ls='lsd -A'`) to `.zshrc`

## 2. Update checkhealth.sh

- [x] 2.1 Add `zoxide`, `lazygit`, and `lsd` to the TOOLS array in `checkhealth.sh`

## 3. Rewrite README.md — Quick Start and Prerequisites

- [x] 3.1 Update description to "macOS and Linux" only (remove Windows)
- [x] 3.2 Add Quick Start section with clone (`--recurse-submodules`), core tools one-liner, optional terminal emulator, and deploy steps
- [x] 3.3 Add submodule recovery fallback note after Quick Start
- [x] 3.4 Consolidate Prerequisites into categorized blocks (core tools one-liner, optional terminal, optional Ruby)

## 4. Rewrite README.md — Configuration Files and Tools

- [x] 4.1 Add `dot-config/lsd/` to Configuration Files > Utilities
- [x] 4.2 Add Zsh Themes section with `powerlevel10k`
- [x] 4.3 Add `zsh-vi-mode` and `zsh-completions` to Zsh Plugins table
- [x] 4.4 Add `zoxide`, `lazygit`, `lsd`, `cargo`, `node`, `tree-sitter-cli` to Core Tools table
- [x] 4.5 Remove `colorls` and `tmuxifier` from all README sections
