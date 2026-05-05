## ADDED Requirements

### Requirement: Quick Start guide at top of README
The README SHALL include a Quick Start section as the first content section, providing a complete copy-paste flow to clone, install tools, and deploy configurations.

#### Scenario: User follows Quick Start
- **WHEN** a new user clones the repo with `--recurse-submodules`, installs tools via the one-liner, and runs `./setup.sh`
- **THEN** all configurations are deployed and ready to use

#### Scenario: User already cloned without submodules
- **WHEN** a user cloned without `--recurse-submodules`
- **THEN** the README provides the recovery command `git submodule update --init --recursive`

### Requirement: Core tools install as one-liner
The Quick Start SHALL include a single `brew install` command for all core tools: `stow`, `neovim`, `zsh`, `fzf`, `bat`, `tmux`, `zoxide`, `lazygit`, `lsd`, `node`, and `tree-sitter`.

#### Scenario: User runs core tools one-liner
- **WHEN** a user runs the consolidated `brew install` command
- **THEN** all core tools are installed in one operation

### Requirement: Terminal emulator as optional separate step
The Quick Start SHALL provide terminal emulator installation as an optional, separate command with a choice between Wezterm and Ghostty.

#### Scenario: User chooses Wezterm
- **WHEN** a user runs `brew install --cask wezterm`
- **THEN** Wezterm is installed

#### Scenario: User chooses Ghostty
- **WHEN** a user runs `brew install --cask ghostty`
- **THEN** Ghostty is installed

### Requirement: README documents macOS and Linux only
The README SHALL not mention Windows as a supported platform.

#### Scenario: User reads platform support
- **WHEN** a user reads the README description
- **THEN** only macOS and Linux are mentioned as supported platforms

### Requirement: All configured tools are documented
The README Tools table SHALL include every tool actively configured: `stow`, `neovim`, `zsh`, `fzf`, `bat`, `tmux`, `zoxide`, `lazygit`, `lsd`, `cargo`, `node`, and `tree-sitter-cli`.

#### Scenario: User checks tool inventory
- **WHEN** a user reviews the Tools section
- **THEN** every configured tool is listed with description and link

### Requirement: Zsh themes are documented
The README SHALL include a Zsh Themes section documenting `powerlevel10k`.

#### Scenario: User wants to customize their prompt
- **WHEN** a user reads the Zsh Themes section
- **THEN** they find `powerlevel10k` with a link and description

### Requirement: Zsh plugins are complete
The Zsh Plugins table SHALL include `zinit`, `zsh-autosuggestions`, `zsh-syntax-highlighting`, `fzf-tab`, `zsh-vi-mode`, and `zsh-completions`.

#### Scenario: User reviews zsh plugins
- **WHEN** a user reads the Zsh Plugins section
- **THEN** all configured plugins are listed

### Requirement: colorls and tmuxifier references removed
The `.zshrc` and README SHALL not reference `colorls` or `tmuxifier`.

#### Scenario: User reads .zshrc
- **WHEN** a user opens `.zshrc`
- **THEN** no references to `colorls` or `tmuxifier` exist

#### Scenario: User reads README
- **WHEN** a user searches the README for `colorls` or `tmuxifier`
- **THEN** no matches are found

### Requirement: lsd alias replaces colorls in .zshrc
The `.zshrc` SHALL use `lsd` as the `ls` alias instead of `colorls`.

#### Scenario: User runs ls
- **WHEN** a user runs `ls` in their shell
- **THEN** the output is formatted by `lsd`

### Requirement: checkhealth.sh verifies all core tools
The `checkhealth.sh` script SHALL check for `stow`, `nvim`, `zsh`, `fzf`, `bat`, `tmux`, `zoxide`, `lazygit`, `lsd`, and `wezterm`.

#### Scenario: All tools installed
- **WHEN** a user runs `./checkhealth.sh` with all tools present
- **THEN** all checks pass with exit code 0

#### Scenario: Tool missing
- **WHEN** a user runs `./checkhealth.sh` with a missing tool
- **THEN** the missing tool is reported with exit code 1

### Requirement: Optional prerequisites documented
The README SHALL include an Optional Prerequisites section for `rbenv` and `ruby`, which are conditionally loaded in `.zshrc`.

#### Scenario: User wants Ruby support
- **WHEN** a user reads the Optional Prerequisites section
- **THEN** they find installation instructions for `rbenv` and `ruby`
