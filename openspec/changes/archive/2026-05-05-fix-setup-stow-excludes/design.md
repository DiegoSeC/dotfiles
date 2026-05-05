## Context

The current `setup.sh` runs `stow .` which processes every directory in the repo. This includes `dot-config/opencode`, `dot-config/openspec`, `dot-config/gh`, and `dot-config/github-copilot` — directories that contain local/private config or are gitignored. Stowing them causes errors or overwrites personal credentials on the target machine.

## Goals / Non-Goals

**Goals:**
- Prevent `opencode`, `openspec`, `gh`, and `github-copilot` from being symlinked by `setup.sh`
- Keep the script simple and maintainable

**Non-Goals:**
- No changes to `.stowrc` — the excludes belong in the deploy script, not global stow config
- No removal of these directories from the repo — they still need to exist for local development

## Decisions

**Use `--ignore` pattern in setup.sh**: GNU Stow supports `--ignore` flags to skip files/directories matching a pattern. This is cleaner than explicitly listing every package to stow, since new valid packages get included automatically.

Alternative considered: explicitly stow each package (`stow dot-config bat lsd nvim ...`). This is fragile — adding a new config directory requires updating the script.

## Risks / Trade-offs

- [Ignore pattern could match unintended dirs] → Use exact directory names as patterns, not wildcards
