# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    printf "${YELLOW}Installing Homebrew...${NC}\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    printf "${GREEN}Homebrew is already installed.${NC}\n"
fi

# Check if Homebrew is in PATH
if ! grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' /Users/eva/.zprofile; then
    printf "${YELLOW}Adding Homebrew to PATH...${NC}\n"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/eva/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    printf "${GREEN}Homebrew is already in PATH.${NC}\n"
fi