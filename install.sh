#!/bin/bash

# Install slash commands for Claude Code or OpenAI Codex
# Strips Jekyll front matter for clean prompts

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to strip YAML front matter (content between --- markers)
strip_front_matter() {
    local file="$1"
    # Use sed to remove everything from start to second ---
    sed '1{/^---$/!q;};1,/^---$/d' "$file"
}

# Function to copy commands with stripped front matter
copy_commands() {
    local target_dir="$1"
    local source_dirs=("commands" "personas")

    mkdir -p "$target_dir"

    local count=0
    for dir in "${source_dirs[@]}"; do
        for file in "$dir"/*.md; do
            # Skip index.md files (Jekyll navigation only)
            [[ "$(basename "$file")" == "index.md" ]] && continue

            local basename=$(basename "$file")
            strip_front_matter "$file" > "$target_dir/$basename"
            ((count++))
        done
    done

    echo -e "${GREEN}✓${NC} Installed $count commands to $target_dir"
}

# Main menu
echo "Slash Commands Installer"
echo "========================"
echo ""
echo "Where would you like to install?"
echo ""
echo "  1) Claude Code (project)  → .claude/commands/"
echo "  2) Claude Code (global)   → ~/.claude/commands/"
echo "  3) OpenAI Codex (project) → .codex/prompts/"
echo "  4) All project locations"
echo "  5) Exit"
echo ""
read -p "Choose [1-5]: " choice

case $choice in
    1)
        copy_commands ".claude/commands"
        ;;
    2)
        copy_commands "$HOME/.claude/commands"
        ;;
    3)
        copy_commands ".codex/prompts"
        ;;
    4)
        copy_commands ".claude/commands"
        copy_commands ".codex/prompts"
        ;;
    5)
        echo "Bye!"
        exit 0
        ;;
    *)
        echo -e "${RED}Invalid choice${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${GREEN}Done!${NC} Front matter stripped for clean prompts."
