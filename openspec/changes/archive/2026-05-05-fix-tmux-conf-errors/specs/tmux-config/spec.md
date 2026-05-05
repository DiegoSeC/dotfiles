## ADDED Requirements

### Requirement: TPM plugin manager loads first
The TPM plugin SHALL be declared as the first `@plugin` entry in the configuration to ensure proper plugin initialization order.

#### Scenario: TPM is first in plugin list
- **WHEN** tmux parses the plugin declarations
- **THEN** `tmux-plugins/tpm` appears before all other `@plugin` entries

### Requirement: Catppuccin theme loads after plugin installation
The catppuccin theme `run` command SHALL execute after TPM has bootstrapped and installed plugins, ensuring the theme file exists before sourcing.

#### Scenario: First run with no plugins installed
- **WHEN** tmux starts and TPM bootstrap clones the plugin repository
- **THEN** the catppuccin `run` command executes after installation completes without error

#### Scenario: Subsequent runs with plugins installed
- **WHEN** tmux starts and plugins already exist
- **THEN** the catppuccin `run` command sources the theme file successfully

### Requirement: Style strings use correct syntax
All tmux style strings (`#[...]`) SHALL not contain spaces after commas between style properties.

#### Scenario: Status bar style strings parse correctly
- **WHEN** tmux parses status-left and status-right style strings
- **THEN** no spaces exist after commas within `#[bg=...,fg=...,none]` patterns

### Requirement: Modern terminal features configuration
The configuration SHALL use `terminal-features` instead of the legacy `terminal-overrides` for RGB color support on tmux 3.2+.

#### Scenario: RGB colors work in xterm-256color terminals
- **WHEN** tmux starts in an xterm-256color terminal
- **THEN** `terminal-features` appends RGB support and true colors render correctly

### Requirement: No redundant settings when features are disabled
Configuration options SHALL not be set for visual elements that are explicitly disabled.

#### Scenario: Pane border styles removed when borders are off
- **WHEN** `@catppuccin_pane_border_status` is set to "off"
- **THEN** `pane-active-border-style` and `pane-border-style` are not configured

### Requirement: No dead commented code
The configuration SHALL not contain commented-out lines that serve no documentation purpose.

#### Scenario: Commented prefix bindings removed
- **WHEN** the configuration is reviewed
- **THEN** no commented `set -g prefix` or `unbind` lines exist that are not actively documenting a decision
