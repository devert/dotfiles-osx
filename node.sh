#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install NVM for Node Version Management
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# Reload bash
reload

# Install latest version of Node
nvm install node

# Set latest node as the default
nvm alias default node

# Copying whatever version of node you have active via nvm into the /usr/local/ directory
# and setting the permissions so that all users can access them.
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-with-nvm-node-version-manager-on-a-vps
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

# Install some global modules
npm install -g alfred-atom
npm install -g avn avn-nvm
npm install -g eslint
npm install -g npm-check-updates
npm install -g gulp-cli

# Setup AVN
avn setup

# Reload bash
reload
