## ADDED Requirements

### Requirement: XDG base directories set in .zshenv
The `.zshenv` file SHALL export `XDG_CONFIG_HOME` set to `$HOME/.config`, `XDG_CACHE_HOME` set to `$HOME/.cache`, and `XDG_DATA_HOME` set to `$HOME/.local/share`.

#### Scenario: Non-interactive shell has XDG vars
- **WHEN** a non-interactive zsh script runs
- **THEN** `XDG_CONFIG_HOME`, `XDG_CACHE_HOME`, and `XDG_DATA_HOME` are available

#### Scenario: Interactive shell has XDG vars
- **WHEN** an interactive zsh session starts
- **THEN** `XDG_CONFIG_HOME`, `XDG_CACHE_HOME`, and `XDG_DATA_HOME` are available

### Requirement: Environment exports moved from .zshrc to .zshenv
All environment variable exports (`GEM_HOME`, `MANPAGER`, `.env` file loading) SHALL be moved from `.zshrc` to `.zshenv` with appropriate guards for tool availability.

#### Scenario: Ruby env vars available when Ruby installed
- **WHEN** Ruby and gem are installed
- **THEN** `GEM_HOME` is set and `$GEM_HOME/bin` is in PATH

#### Scenario: MANPAGER set when bat installed
- **WHEN** bat is installed
- **THEN** `MANPAGER` is configured to use bat

#### Scenario: .env file loaded when present
- **WHEN** `$HOME/.env` exists
- **THEN** environment variables from the file are loaded

### Requirement: .zshrc uses XDG vars without defaults
The `.zshrc` file SHALL reference `$XDG_CACHE_HOME` and `$XDG_DATA_HOME` directly without fallback defaults, since they are guaranteed to be set by `.zshenv`.

#### Scenario: .zshrc references XDG vars
- **WHEN** `.zshrc` is sourced
- **THEN** it uses `$XDG_CACHE_HOME` directly without `${XDG_CACHE_HOME:-...}` patterns
