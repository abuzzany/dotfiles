# Install oh my zsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages using brew
brew Bundle

# Replace .zshrc
cp -f .zshrc ~/.zshrc & exec zsh

# Replace .vimrc
cp -f .vimrc ~/.vimrc & exec vim

# Execute terminal_config.sh
./terminal_config.sh
