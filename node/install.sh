#!/usr/bin/env bash

# Install NVM
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Global modules to install with every version of node managed through nvm
echo "Symlinking NVM default packages config"
sudo ln -s ~/.dotfiles/node/nvm_default_packages ~/.nvm/default-packages

# Install latest version of Node and LTS version of Node
echo "Installing Latest Node and LTS Node Version"
nvm install node
nvm install --lts

# Set latest stable node as the default
nvm alias default stable
