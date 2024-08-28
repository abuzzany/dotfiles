# Install oh my zsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/eva/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install packages using brew
brew bundle

# Replace .zshrc
cp -f .zshrc ~/.zshrc; exec zsh

# Replace .vimrc
cp -f .vimrc ~/.vimrc; exec vim

# Execute terminal_config.sh
./terminal_config.sh
