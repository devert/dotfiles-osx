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
brew cask install 1password
brew cask install alfred
brew cask install appcleaner
brew cask install audio-hijack
brew cask install balenaetcher
brew cask install bettertouchtool
brew cask install brave-browser
brew cask install charles
brew cask install chromium
brew cask install contexts
brew cask install docker
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install hazeover
brew cask install iterm2
brew cask install insomnia
brew cask install kdiff3
brew cask install microsoft-edge
brew cask install notion
brew cask install pixelsnap
brew cask install scroll-reverser
brew cask install sketch
brew cask install slack
brew cask install sourcetree
brew cask install spotify
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc

# Reload shell
reload