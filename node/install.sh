#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install NVM for Node Version Management
mkdir -p ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# Reload bash
reload

# Global modules to install with every version of node managed through nvm
sudo ln -s ~/.dotfiles/node/nvm_default_packages ~/.nvm/default-packages

# Install latest version of Node and LTS version of Node
nvm install node
nvm install --lts

# Set latest node as the default
nvm alias default node

# Reload bash
reload
