#!/usr/bin/env bash
# ==============================================================================
# IRAM Themes - Universal Installer for Wayland & Hyprland
# ==============================================================================
set -euo pipefail

GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_DEST="${XDG_CONFIG_HOME:-$HOME/.config}/iram/themes"
BIN_DEST="${HOME}/.local/bin"

echo -e "${BOLD}${CYAN}=== Installing IRAM Themes Suite ===${NC}"

# 1. Ensure target directories exist
mkdir -p "$THEME_DEST" "$BIN_DEST" "$HOME/.local/state/iram/current" "$HOME/.config/iram/hooks"

# 2. Copy themes
echo -e "${BLUE}Copying 18 modern themes to $THEME_DEST...${NC}"
cp -r "$SCRIPT_DIR/themes/"* "$THEME_DEST/"

# 3. Copy binaries
echo -e "${BLUE}Installing switcher utilities to $BIN_DEST...${NC}"
cp "$SCRIPT_DIR/bin/"* "$BIN_DEST/"
chmod +x "$BIN_DEST/iram-theme"*

# 4. Setup default theme-set hook if not present
if [ ! -f "$HOME/.config/iram/hooks/theme-set" ]; then
    cat << 'HOOK_EOF' > "$HOME/.config/iram/hooks/theme-set"
#!/usr/bin/env bash
set -euo pipefail
THEME_NAME="${1:-$(cat "$HOME/.local/state/iram/current/theme.name" 2>/dev/null || echo "Unknown")}"
if [[ -x "$HOME/.local/bin/iram-theme-sync-all" ]]; then
    "$HOME/.local/bin/iram-theme-sync-all" || true
fi
if command -v notify-send >/dev/null 2>&1; then
    notify-send -a "IRAM Themes" "Theme Changed" "Active Theme: $THEME_NAME" -t 3000 2>/dev/null || true
fi
HOOK_EOF
    chmod +x "$HOME/.config/iram/hooks/theme-set"
fi

echo -e "${GREEN}${BOLD}✓ IRAM Themes installed successfully!${NC}"
echo -e "Switch themes anytime by running:"
echo -e "  ${BOLD}iram-theme-switch${NC}              # Interactive GUI picker"
echo -e "  ${BOLD}iram-theme-switch <theme-name>${NC} # Direct CLI switch (e.g. tokyo-storm, ryoku-crimson)"
