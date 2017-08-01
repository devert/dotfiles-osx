#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Homebrew Bash
echo "Installing Homebrew Bash"

brew install bash
brew install bash-git-prompt
brew tap homebrew/versions
brew install bash-completion2

echo "Change User Shell To Homebrew Installed Bash"

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Reload bash
reload

# Install Other Homebrew Packages
echo "Installing Other Homebrew Packages"

brew install git
brew install git-flow
brew install hub
brew install fish
brew install python
brew install tmux
brew install yarn
brew install thefuck
brew install fortune

echo "Install Applications with Homebrew Cask"

brew tap caskroom/cask
brew cask install alfred
brew cask install atom
brew cask install iterm2
brew cask install kdiff3
brew cask install sourcetree
brew cask install firefox
brew cask install virtualbox

echo "Install Binary Font files with Homebrew Cask"

brew tap caskroom/fonts
brew cask install font-menlo-for-powerline
