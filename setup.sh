#!/usr/bin/env bash

# Exit immediately if a command fails
set -e

# Colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

REPO_DIR="$HOME/mpv-config"
MPV_DIR="$HOME/.config/mpv"

echo -e "${CYAN}🎬 Setting up Ultimate MPV Config...${NC}"

# Clone or update the repo
if [ -d "$REPO_DIR/.git" ]; then
    echo -e "${YELLOW}📁 Existing repo found. Pulling latest updates...${NC}"
    git -C "$REPO_DIR" pull --rebase
else
    echo -e "${CYAN}📁 Cloning repository...${NC}"
    git clone https://github.com/maruf009sultan/mpv-config.git "$REPO_DIR"
fi

# Create directories
echo -e "${CYAN}📂 Creating directories...${NC}"
mkdir -p "$MPV_DIR"
mkdir -p "$HOME/Pictures/mpv_screenshots"

# Backup existing configs if they aren't already symlinks
if [ -f "$MPV_DIR/mpv.conf" ] && [ ! -L "$MPV_DIR/mpv.conf" ]; then
    echo -e "${YELLOW}⚠️ Existing mpv.conf found. Backing up...${NC}"
    mv "$MPV_DIR/mpv.conf" "$MPV_DIR/mpv.conf.backup"
fi
if [ -f "$MPV_DIR/input.conf" ] && [ ! -L "$MPV_DIR/input.conf" ]; then
    mv "$MPV_DIR/input.conf" "$MPV_DIR/input.conf.backup"
fi

# Symlinking configs
echo -e "${CYAN}🔗 Symlinking configs...${NC}"
ln -sf "$REPO_DIR/mpv.conf" "$MPV_DIR/mpv.conf"
ln -sf "$REPO_DIR/input.conf" "$MPV_DIR/input.conf"

echo -e "${GREEN}✅ Installation complete! Fire up mpv and enjoy.${NC}"
