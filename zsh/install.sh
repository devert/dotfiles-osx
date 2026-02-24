#!/usr/bin/env zsh

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
