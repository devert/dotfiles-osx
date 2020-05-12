#!/usr/bin/env bash

# TODO: Switch to zsh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Put Bash Configuration in Place
echo "Configuring Bash Profile"

sudo ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile
sudo ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc

# Install Homebrew Bash
echo "Installing Homebrew Bash"

brew install bash
brew install bash-git-prompt
brew install bash-completion@2

echo "Change User Shell To Homebrew Installed Bash"

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;
