# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Install Powerlevel10k
if [ ! -d "$HOME/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
  printf "${GREEN}Powerlevel10k has been installed.${NC}\n"
else
  printf "${YELLOW}Powerlevel10k directory already exists. Skipping installation.${NC}\n"
fi

# Create a separate script for p10k configuration
cat <<'EOF' >~/configure_p10k.sh
#!/bin/zsh
source ~/.zshrc
p10k configure
EOF

chmod +x ~/configure_p10k.sh

printf "${YELLOW}To configure Powerlevel10k, please run the following command after this script finishes:${NC}\n"
printf "${GREEN}zsh ~/configure_p10k.sh${NC}\n"

# Install zsh-autosuggestions
if [ ! -d "$HOME/.zsh/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc
  printf "${GREEN}zsh-autosuggestions installed.${NC}\n"
else
  printf "${YELLOW}zsh-autosuggestions already installed. Skipping.${NC}\n"
fi

# Install zsh-syntax-highlighting
if [ ! -d "$HOME/.zsh/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
  echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc
  printf "${GREEN}zsh-syntax-highlighting installed.${NC}\n"
else
  printf "${YELLOW}zsh-syntax-highlighting already installed. Skipping.${NC}\n"
fi
