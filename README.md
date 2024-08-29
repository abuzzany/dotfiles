# Dotfiles

This repository contains mydotfiles and scripts to set up a new development environment on macOS.

## Overview

This project includes configuration files and setup scripts for:

- Zsh shell with Oh My Zsh
- Homebrew package manager
- Various command-line tools and applications
- Terminal customization with Powerlevel10k
- Vim configuration

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/dotfiles.git
   cd dotfiles
   ```

2. Run the setup script:
   ```
   ./setup.sh
   ```

   This script will:
   - Install Oh My Zsh
   - Install Homebrew
   - Install packages listed in the Brewfile
   - Copy .zshrc and .vimrc to your home directory
   - Set up terminal configurations

3. After the setup script finishes, run the following command to configure Powerlevel10k:
   ```
   zsh ~/configure_p10k.sh
   ```

## What's Included

- `.zshrc`: Zsh configuration file
- `.vimrc`: Vim configuration file
- `Brewfile`: List of packages to be installed via Homebrew
- `setup.sh`: Main setup script
- `install_oh_my_zsh.sh`: Script to install Oh My Zsh
- `install_homebrew.sh`: Script to install Homebrew
- `terminal_config.sh`: Script to set up terminal customizations
- `python_config.sh`: Script to set up Python environment

## Customization

Feel free to modify the configuration files and scripts to suit your needs. You can add or remove packages in the `Brewfile`, adjust shell aliases in `.zshrc`, or modify vim settings in `.vimrc`.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).
