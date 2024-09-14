#!/usr/bin/env bash
set -euo pipefail

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo -e "${YELLOW}Installing Homebrew...${NC}"
    if ! /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
        echo -e "${RED}Failed to install Homebrew${NC}" >&2
        exit 1
    fi
else
    echo -e "${GREEN}Homebrew is already installed.${NC}"
fi

# Check if Homebrew is in PATH
BREW_PATH='/opt/homebrew/bin/brew'
if ! grep -q "eval \"\$(${BREW_PATH} shellenv)\"" "${HOME}/.zprofile"; then
    echo -e "${YELLOW}Adding Homebrew to PATH...${NC}"
    echo "eval \"\$(${BREW_PATH} shellenv)\"" >> "${HOME}/.zprofile"
    eval "$(${BREW_PATH} shellenv)"
else
    echo -e "${GREEN}Homebrew is already in PATH.${NC}"
fi
