

       _____        _    __ _ _           
      |  __ \      | |  / _(_) |          
      | |  | | ___ | |_| |_ _| | ___  ___ 
      | |  | |/ _ \| __|  _| | |/ _ \/ __|
      | |__| | (_) | |_| | | | |  __/\__ \
      |_____/ \___/ \__|_| |_|_|\___||___/ By Angel Buzany
                                     

# Dotfiles

This repository contains mydotfiles and scripts to set up a new development environment on macOS.

## Overview

This project includes configuration files and setup scripts for:

- Zsh shell with Oh My Zsh
- Homebrew package manager
- Various command-line tools and applications
- Terminal customization with Powerlevel10k
- Vim configuration
- Python environment setup

## Prerequisites

- macOS (This setup is primarily designed for macOS)
- Git
- Rust and Cargo (for running the main setup script)

### Installing Rust and Cargo

If you don't have Rust and Cargo installed, follow these steps:

1. Open Terminal on your Mac.

2. Install Rust and Cargo using rustup by running the following command:
   ```
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

3. Follow the on-screen instructions. When prompted, choose the default installation (option 1).

4. After installation, add Rust to your system PATH by running:
   ```
   source $HOME/.cargo/env
   ```

5. Verify the installation by checking the Rust and Cargo versions:
   ```
   rustc --version
   cargo --version
   ```

   You should see version information for both commands.

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/dotfiles.git
   cd dotfiles
   ```

2. Run the setup script:
   ```
   cargo build --release
   ./target/release/dotfiles
   ```

   This will execute the following scripts:
   - Install Oh My Zsh
   - Install Homebrew
   - Install packages listed in the Brewfile
   - Copy configuration files (.zshrc and .vimrc) to your home directory
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

Feel free to modify the configuration files and scripts to suit your needs:

- Add or remove packages in the `Brewfile`
- Adjust shell aliases and configurations in `.zshrc`
- Modify vim settings in `.vimrc`
- Update the list of scripts to run in `src/main.rs`

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgements

- [Oh My Zsh](https://ohmyz.sh/)
- [Homebrew](https://brew.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Python](https://www.python.org/)
- [Vim](https://www.vim.org/)
- [Zsh](https://www.zsh.org/)