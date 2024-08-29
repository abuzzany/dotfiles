# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

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