#!/bin/bash

# Antigravity Cleaner Pro - Instant Installer
# Powered by TAWANA NETWORK

set -e

# Colors
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}====================================================${NC}"
echo -e "${BLUE}   🚀 ANTIGRAVITY CLEANER PRO - INSTALLER${NC}"
echo -e "${BLUE}   (c) 2024-2025 Tawana Network${NC}"
echo -e "${BLUE}====================================================${NC}"

# Detect OS
OS_TYPE="$(uname -s)"
case "${OS_TYPE}" in
    Linux*)     OS=Linux;;
    Darwin*)    OS=Mac;;
    *)          OS="UNKNOWN"
esac

echo -e "[*] Detected OS: ${OS}"

# Check Python
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}[ERROR] Python 3 is required but not installed.${NC}"
    exit 1
fi

# Create install directory
INSTALL_DIR="$HOME/.antigravity-cleaner"
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

echo -e "[*] Downloading latest release..."
# Get latest release tag from GitHub API
LATEST_TAG=$(curl -s https://api.github.com/repos/tawroot/antigravity-cleaner/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$LATEST_TAG" ]; then
    LATEST_TAG="main"
fi

if [ "$OS" == "Mac" ]; then
    FILE_NAME="AntigravityCleaner-macOS"
elif [ "$OS" == "Linux" ]; then
    FILE_NAME="AntigravityCleaner-Linux"
else
    echo -e "${RED}[ERROR] Desktop environment required for GUI version.${NC}"
    exit 1
fi

# Download binary
DOWNLOAD_URL="https://github.com/tawroot/antigravity-cleaner/releases/download/${LATEST_TAG}/${FILE_NAME}"

if curl -L --output AntigravityCleaner "$DOWNLOAD_URL"; then
    chmod +x AntigravityCleaner
    echo -e "${GREEN}[SUCCESS] Downloaded Antigravity Cleaner Pro version ${LATEST_TAG}${NC}"
else
    echo -e "${RED}[ERROR] Failed to download binary. Falling back to source...${NC}"
    # Git clone fallback logic could go here
fi

# Create alias
ALIAS_CMD="alias antigravity='$INSTALL_DIR/AntigravityCleaner'"
if ! grep -q "antigravity" ~/.bashrc 2>/dev/null; then
    echo "$ALIAS_CMD" >> ~/.bashrc
    echo -e "[*] Added 'antigravity' alias to .bashrc"
fi

if [ "$OS" == "Mac" ] && [ -f ~/.zshrc ]; then
    if ! grep -q "antigravity" ~/.zshrc; then
        echo "$ALIAS_CMD" >> ~/.zshrc
        echo -e "[*] Added 'antigravity' alias to .zshrc"
    fi
fi

echo -e ""
echo -e "${GREEN}====================================================${NC}"
echo -e "${GREEN}   ✅ INSTALLATION COMPLETE!${NC}"
echo -e "${GREEN}   Type 'antigravity' to launch the app.${NC}"
echo -e "${GREEN}====================================================${NC}"
