#!/usr/bin/env bash

# Global modules to install with every version of node managed through nvm
sudo ln -s ~/.dotfiles/node/nvm_default_packages ~/.nvm/default-packages

# Install latest version of Node and LTS version of Node
nvm install node
nvm install --lts

# Set latest node as the default
nvm alias default node
