#!/usr/bin/env bash

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
echo "yay installed"
echo "yay version: $(yay -Vy)"
