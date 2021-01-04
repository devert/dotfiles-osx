#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install command-line tools using Homebrew.
echo "Installing Homebrew Packages"

brew install asdf
brew install curl
brew install fish
brew install fzf
/usr/local/opt/fzf/install

brew install git
brew install git-extras
brew install httpie
brew install hub

brew install jq
brew install neovim
brew install pyenv

mkdir -p ~/.itermocil
brew install TomAnthony/brews/itermocil
brew install TomAnthony/brews/queue

brew install tree
brew install tmux
brew install watchman
brew install yarn
brew install z

echo "Install Applications with Homebrew Cask"

brew install brew-cask-completion
brew install --cask 1password
brew install --cask adobe-acrobat-reader
brew install --cask alfred
brew install --cask appcleaner
brew install --cask applepi-baker
brew install --cask audio-hijack
brew install --cask bettertouchtool
brew install --cask brave-browser
brew install --cask charles
brew install --cask chromium
brew install --cask contexts
brew install --cask docker
brew install --cask dropbox
brew install --cask firefox
brew install --cask google-chrome
brew install --cask hazeover
brew install --cask insomnia
brew install --cask iterm2
brew install --cask kdiff3
brew install --cask microsoft-edge
brew install --cask notion
brew install --cask pixelsnap
brew install --cask raspberry-pi-imager
brew install --cask rocket
brew install --cask scroll-reverser
brew install --cask sketch
brew install --cask slack
brew install --cask sourcetree
brew install --cask spotify
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask zoomus

# Reload shell
reload
