# Project Context & Guidelines

## Overview
Your objective is to assist in the creation and management of configuration files (dotfiles) for macOS and Linux environments.

## Approved Tools
The following tools are authorized for use and configuration in this project:
* `nvim` (Note: managed as a git submodule)
* `zoxide`
* `lazygit`
* `cargo`
* `brew`
* `bat`
* `zsh`
* `powerlevel10k`
* `stow`
* `fzf`
* `tmux`
* `lsd` (Docs: https://github.com/lsd-rs/lsd/blob/main/README.md)
* `tree-sitter-cli` (Docs: https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
* `nodejs`
* `uv` (Docs: https://docs.astral.sh/uv/)
* `sqlit` (Docs: https://github.com/Maxteabag/sqlit)

## Repository Architecture
Directory and file names must strictly follow the official documentation for each respective tool. This project uses `stow` conventions for symlinking.

* **Folder Naming:** The prefix `dot-{folder}` translates to `.{folder}` on the target system. For example, `dot-config` maps to `~/.config`.
* **Root Files:** Configuration files destined for the root of the user's home directory (e.g., `.zshrc`) must be placed at the root of this repository, outside of `dot-config`.

**Expected Structure Example:**
```text
├── dot-config/      # Maps to ~/.config/
│   ├── bat/         # Config for bat
│   ├── ghostty/     # Ghostty terminal configuration
│   ├── lazygit/     # Config for lazygit
│   ├── lsd/         # Config for lsd
│   ├── nvim/        # Config for nvim (Do not modify!)
│   └── sqlit/       # Config for sqlit
├── .zshrc           # Maps to ~/.zshrc
├── .zshenv          # Maps to ~/.zshenv
├── .tmux.conf       # Maps to ~/.tmux.conf
├── .wezterm.lua     # Maps to ~/.wezterm.lua
└── .stowrc          # stow configuration
```

## Operating Directives

### Mandatory Actions (Must Do)
* **Strict Scope:** Execute exactly what is requested and nothing more.
* **Documentation:** You must update the `README.md` whenever a new tool is installed or updated. This update must include the project's URL and exact installation instructions.
* **Health Checks:** You must update the `checkhealth` configuration/script whenever a new tool is installed to ensure it is verified.
* **Cross-Platform Safety:** If a new tool or setting is exclusive to macOS or Linux, you must implement conditional validation. The configuration must be able to run on either OS without throwing errors.
* **Default Theming:** Whenever a tool or application supports custom theming, you must configure it to use the "Catppuccin Frappe" theme by default, unless explicitly instructed otherwise.

### Strict Prohibitions (Must Avoid)
* **No Submodule Edits:** Do not modify or update any files belonging to git submodules (e.g., the `nvim` directory).
* **No Unprompted Files:** Do not create new files. If a new file is required to fulfill a request, you must ask for permission first.
* **No Unprompted Dependencies:** Do not install new dependencies. If a new dependency is absolutely critical, you must ask for permission first.
* **No Private Data:** Do not embed, ask for, or utilize personal user information.
