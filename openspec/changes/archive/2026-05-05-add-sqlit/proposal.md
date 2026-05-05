## Why

Add `sqlit` as an approved tool to the dotfiles. It is a terminal TUI for SQL databases installed via uv.

## What Changes

- Add `uv tool install sqlit-tui` to README.md installation instructions and Tools table
- Add `sqlit` to AGENTS.md approved tools list
- Add `sqlit` to checkhealth.sh verification

## Capabilities

### New Capabilities
- `sqlit-tool`: sqlit installation and configuration in dotfiles

### Modified Capabilities
<!-- None -->

## Impact

- README.md: installation commands and tool documentation
- AGENTS.md: approved tools list
- checkhealth.sh: health check array
