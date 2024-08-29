# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Install Powerlevel10k
if [ ! -d "$HOME/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
    echo "Powerlevel10k has been installed."
else
    echo "Powerlevel10k directory already exists. Skipping installation."
fi

# Create a separate script for p10k configuration
cat << 'EOF' > ~/configure_p10k.sh
#!/bin/zsh
source ~/.zshrc
p10k configure
EOF

chmod +x ~/configure_p10k.sh

echo "To configure Powerlevel10k, please run the following command after this script finishes:"
echo "zsh ~/configure_p10k.sh"

# Install zsh-autosuggestions
if [ ! -d "$HOME/.zsh/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
    echo "zsh-autosuggestions installed."
else
    echo "zsh-autosuggestions already installed. Skipping."
fi

# Install zsh-syntax-highlighting
if [ ! -d "$HOME/.zsh/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
    echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
    echo "zsh-syntax-highlighting installed."
else
    echo "zsh-syntax-highlighting already installed. Skipping."
fi


