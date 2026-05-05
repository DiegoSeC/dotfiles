# Dotfiles

My personal configuration for all environments (Windows, macOS, and Linux), managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Prerequisites

Install the required tools using [Homebrew](https://brew.sh/):

```bash
# GNU Stow (symlink management)
brew install stow

# Neovim (editor)
brew install neovim

# Zsh (shell - pre-installed on macOS)
brew install zsh

# Fzf (fuzzy finder)
brew install fzf

# Bat (cat with syntax highlighting)
brew install bat

# Tmux (terminal multiplexer)
brew install tmux

# Wezterm (terminal emulator)
brew install --cask wezterm
```

See the [Tools](#tools) section for documentation links.

## Installation

Before deploying, verify all required tools are installed:

```bash
./checkhealth.sh
```

Then deploy all configurations with one command:

```bash
./setup.sh
```

This runs `stow .` which creates symlinks from this repository to your home directory.

### Manual deployment

You can also stow individual packages or use stow directly:

```bash
# Deploy all configurations
stow .

# Deploy a specific package
stow dot-config

# Remove a package's symlinks
stow -D dot-config
```

## Configuration Files

### Shell

| File | Description |
|------|-------------|
| `.zshrc` | Zsh shell configuration with aliases, plugins, and environment settings |

### Terminal

| File | Description |
|------|-------------|
| `.tmux.conf` | Tmux terminal multiplexer configuration |
| `.wezterm.lua` | Wezterm terminal emulator configuration |

### Editor

| Path | Description |
|------|-------------|
| `dot-config/nvim/` | Neovim configuration (init.lua, plugins, etc.) |

### Utilities

| Path | Description |
|------|-------------|
| `dot-config/bat/` | Bat configuration with custom themes |
| `.stowrc` | GNU Stow configuration (target directory settings) |

## Tools

### Core Tools

| Tool | Description | Link |
|------|-------------|------|
| GNU Stow | Symlink farm manager for dotfiles | [GitHub](https://www.gnu.org/software/stow/) |
| Neovim | Hyperextensible text editor | [GitHub](https://github.com/neovim/neovim) |
| Zsh | Powerful shell with customization | [Website](https://www.zsh.org/) |
| Fzf | Command-line fuzzy finder | [GitHub](https://github.com/junegunn/fzf) |
| Bat | Cat clone with syntax highlighting | [GitHub](https://github.com/sharkdp/bat) |
| Tmux | Terminal multiplexer | [GitHub](https://github.com/tmux/tmux) |
| Wezterm | GPU-accelerated terminal emulator | [GitHub](https://github.com/wez/wezterm) |

### Neovim Plugins

| Plugin | Description | Link |
|--------|-------------|------|
| lazy.nvim | Modern plugin manager | [GitHub](https://github.com/folke/lazy.nvim) |
| Telescope | Fuzzy finder for files, buffers, etc. | [GitHub](https://github.com/nvim-telescope/telescope.nvim) |
| nvim-treesitter | Incremental parsing and syntax highlighting | [GitHub](https://github.com/nvim-treesitter/nvim-treesitter) |
| nvim-lspconfig | Quickstart configs for built-in LSP | [GitHub](https://github.com/neovim/nvim-lspconfig) |
| Mason | LSP server, DAP, linter, formatter installer | [GitHub](https://github.com/williamboman/mason.nvim) |
| nvim-cmp | Autocompletion plugin | [GitHub](https://github.com/hrsh7th/nvim-cmp) |
| lualine | Status line plugin | [GitHub](https://github.com/nvim-lualine/lualine.nvim) |
| nvim-tree | File explorer | [GitHub](https://github.com/nvim-tree/nvim-tree.lua) |
| Comment.nvim | Smart commenting plugin | [GitHub](https://github.com/numToStr/Comment.nvim) |
| nvim-autopairs | Autopairs plugin | [GitHub](https://github.com/windwp/nvim-autopairs) |
| vim-fugitive | Git wrapper | [GitHub](https://github.com/tpope/vim-fugitive) |
| tokyonight | Clean Neovim theme | [GitHub](https://github.com/folke/tokyonight.nvim) |

### Tmux Plugins

| Plugin | Description | Link |
|--------|-------------|------|
| TPM | Tmux Plugin Manager | [GitHub](https://github.com/tmux-plugins/tpm) |
| tmux-sensible | Sensible tmux defaults | [GitHub](https://github.com/tmux-plugins/tmux-sensible) |
| tmux-resurrect | Persists tmux environment | [GitHub](https://github.com/tmux-plugins/tmux-resurrect) |
| tmux-continuum | Continuous saving of tmux env | [GitHub](https://github.com/tmux-plugins/tmux-continuum) |
| Catppuccin | Soothing pastel theme | [GitHub](https://github.com/catppuccin/tmux) |

### Zsh Plugins

| Plugin | Description | Link |
|--------|-------------|------|
| zinit | Flexible zsh plugin manager | [GitHub](https://github.com/zdharma-continuum/zinit) |
| zsh-autosuggestions | Fish-like autosuggestions | [GitHub](https://github.com/zsh-users/zsh-autosuggestions) |
| zsh-syntax-highlighting | Syntax highlighting for zsh | [GitHub](https://github.com/zsh-users/zsh-syntax-highlighting) |
| fzf-tab | Replace zsh completions with fzf | [GitHub](https://github.com/Aloxaf/fzf-tab) |

## Troubleshooting

### Catppuccin Tmux Theme

Install manually as mentioned in the [official documentation](https://github.com/catppuccin/tmux?tab=readme-ov-file#manual-recommended).

### Stow Conflicts

If stow reports a conflict, it means a file already exists at the target location. Back up the existing file before running stow:

```bash
mv ~/.zshrc ~/.zshrc.bak
./setup.sh
```

### Symlinks Not Working

Ensure you're running stow from the dotfiles directory:

```bash
cd ~/dotfiles
stow .
```
