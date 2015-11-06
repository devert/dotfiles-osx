# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install NVM for Node Version Management
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
