# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if oh-my-zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    printf "${YELLOW}Installing oh-my-zsh...${NC}\n"
    RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    printf "${GREEN}oh-my-zsh is already installed.${NC}\n"
fi

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

# Install packages using brew
brew bundle

# Replace .zshrc
if cp -f .zshrc ~/.zshrc; then
    printf "${GREEN}.zshrc copied successfully${NC}\n"
else
    printf "${RED}Failed to copy .zshrc${NC}\n" >&2
fi

# Replace .vimrc
if cp -f .vimrc ~/.vimrc; then
    printf "${GREEN}.vimrc copied successfully${NC}\n"
else
    printf "${RED}Failed to copy .vimrc${NC}\n" >&2
fi

# Add execute permissions to terminal_config.sh
chmod +x terminal_config.sh

# Execute terminal_config.sh
./terminal_config.sh
