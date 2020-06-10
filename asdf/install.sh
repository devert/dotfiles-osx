#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew Fish
echo "Installing Homebrew asdf-vm"

brew install asdf

# Put Bash Configuration in Place
echo "Configuring asdf-vm"

sudo ln -s ~/.dotfiles/asdf/.asdfrc ~/.asdfrc
sudo ln -s ~/.dotfiles/asdf/.tool-versions ~/.tool-versions

asdf plugin add deno