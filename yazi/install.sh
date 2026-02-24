#!/usr/bin/env zsh

echo "Installing Yazi..."
brew install yazi

echo "Configuring Yazi..."

sudo mkdir -p $HOME/.config/yazi
sudo ln -sfn $HOME/.dotfiles/yazi/yazi.toml $HOME/.config/yazi/yazi.toml

echo "Yazi configuration complete!"
