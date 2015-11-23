# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install NVM for Node Version Management
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

# Reload bash
reload

# Install latest version of Node
nvm install node

# Set latest node as the default
nvm alias default node

# Install some global modules
npm install -g grunt-cli
