#!/usr/bin/env bash

yay -S --noconfirm zsh \
                   bat \
                   fzf \
                   neovim \
                   obsidian \


# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi