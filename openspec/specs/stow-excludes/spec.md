## ADDED Requirements

### Requirement: Stow excludes specific directories
The `setup.sh` script SHALL exclude `opencode`, `openspec`, `gh`, and `github-copilot` directories from being symlinked.

#### Scenario: Running setup.sh
- **WHEN** a user runs `./setup.sh`
- **THEN** the excluded directories are not symlinked to the target

#### Scenario: New valid config directory added
- **WHEN** a new valid config directory is added to `dot-config/`
- **THEN** it is automatically included by stow without modifying `setup.sh`
