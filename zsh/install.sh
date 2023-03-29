#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew Zsh
echo "Installing Zsh"

brew install zsh

# Switch to using brew-installed zsh as default shell
echo "Change User Shell To Homebrew Installed Zsh"

sudo dscl . -create /Users/$USER UserShell /opt/homebrew/bin/zsh

# Install Oh My Zsh
echo "Installing Oh My Zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Put Zsh configuration in place
echo "Configuring Zsh Profile"

sudo ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
sudo ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Install custom Zsh plugins
echo "Installing Custom Zsh Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/mafredri/zsh-async $ZSH_CUSTOM/plugins/async
git clone https://github.com/devert/fast-zsh-nvm $ZSH_CUSTOM/plugins/fast-loading-nvm

# Install custom Zsh theme
echo "Installing Custom Zsh Theme"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
sudo ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

# Install custom configuration files
sudo ln -s ~/.dotfiles/zsh/aliases.zsh $ZSH_CUSTOM/aliases.zsh
sudo ln -s ~/.dotfiles/zsh/functions.zsh $ZSH_CUSTOM/functions.zsh
sudo ln -s ~/.dotfiles/zsh/exports.zsh $ZSH_CUSTOM/exports.zsh

