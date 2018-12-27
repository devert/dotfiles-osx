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
brew install bash-completion@2

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
brew install git-extras
brew install httpie
brew install hub
brew install fish
brew install jq
brew install neovim
brew install python     # python 3
brew install python@2   # python 2
brew install tmux
brew install yarn
brew install z

echo "Install Applications with Homebrew Cask"

brew tap caskroom/cask
brew install brew-cask-completion
brew cask install 1password
brew cask install alfred
brew cask install appcleaner
brew cask install charles
brew cask install chromium
brew cask install docker
brew cask install dropbox
brew cask install evernote
brew cask install google-chrome
brew cask install iterm2
brew cask install insomnia
brew cask install kdiff3
brew cask install scroll-reverser
brew cask install sketch
brew cask install slack
brew cask install sourcetree
brew cask install firefox
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc

echo "Install Binary Font files with Homebrew Cask"

brew tap caskroom/fonts
brew cask install font-menlo-for-powerline
