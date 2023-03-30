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

brew install curl
brew install fzf
# To install useful key bindings and fuzzy completion:
# $(brew --prefix)/opt/fzf/install

brew install git
brew install git-extras
brew install gh

# Conflicts with git-extras sync, so override
brew install jacobwgillespie/tap/git-sync
brew link --overwrite git-sync

brew install httpie
brew install jq
brew install neovim
brew install pyenv
brew install pyenv-virtualenv
brew install tree
brew install yarn
brew install z
brew install zsh

echo "Install Applications with Homebrew Cask"

brew install --cask 1password
brew install --cask adobe-acrobat-reader # TODO: consider removing
brew install --cask appcleaner
brew install --cask applepi-baker
brew install --cask audio-hijack
brew install --cask bettertouchtool
brew install --cask brave-browser
brew install --cask charles # TODO: consider removing
brew install --cask chromium --no-quarantine
brew install --cask contexts
brew install --cask docker
brew install --cask dropbox
brew install --cask firefox
brew install --cask google-chrome
brew install --cask hiddenbar
brew install --cask httpie # TODO: determine which one is better between this and insomnia
brew install --cask insomnia # TODO: determine which one is better between this and httpie
brew install --cask iterm2
brew install --cask karabiner-elements
brew install --cask kdiff3 # TODO: consider removing or finding new diff app
brew install --cask microsoft-edge
brew install --cask notion
brew install --cask pixelsnap
brew install --cask plex
brew install --cask raspberry-pi-imager
brew install --cask raycast
brew install --cask scroll-reverser
brew install --cask shift
brew install --cask slack # TODO: consider removing since used with Shift
brew install --cask sourcetree
brew install --cask spotify
brew install --cask virtualbox # TODO: consider removing
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask zoom

# Reload shell
reload
