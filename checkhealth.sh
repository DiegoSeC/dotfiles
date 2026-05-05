#!/usr/bin/env bash
# =============================================================================
# Dotfiles Health Check
# =============================================================================
# Checks if all required tools are installed and available in PATH.
# Exit code 0: all tools found
# Exit code 1: one or more tools missing
# =============================================================================

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Required tools
TOOLS=(stow nvim zsh fzf bat tmux wezterm zoxide lazygit lsd uv sqlit)

# Track results
ALL_PASSED=true

echo -e "${BOLD}Dotfiles Health Check${NC}"
echo "==================="
echo ""

for tool in "${TOOLS[@]}"; do
    if command -v "$tool" &>/dev/null; then
        echo -e "  ${GREEN}✓${NC} $tool"
    else
        echo -e "  ${RED}✗${NC} $tool ${RED}(not found)${NC}"
        ALL_PASSED=false
    fi
done

echo ""

if $ALL_PASSED; then
    echo -e "${GREEN}${BOLD}All tools installed!${NC}"
    exit 0
else
    echo -e "${RED}${BOLD}Some tools are missing.${NC}"
    echo "Install missing tools with Homebrew:"
    echo "  brew install stow neovim zsh fzf bat tmux zoxide lazygit lsd node rust uv"
    echo "  cargo binstall tree-sitter-cli"
    echo "  uv tool install sqlit-tui"
    echo "  brew install --cask wezterm"
    exit 1
fi
