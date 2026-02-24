#!/usr/bin/env zsh

# Install FNM (Fast Node Manager) for managing Node versions
echo "Installing FNM (Fast Node Manager)..."
brew install fnm

# Install latest version and LTS version of Node
echo "Installing Latest Node and LTS Node Version..."
fnm install --latest
fnm install --lts

# Set latest stable node as the default
echo "Setting latest Node as the default..."
fnm default latest

echo "Node Installation Complete!"
