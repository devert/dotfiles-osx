#!/usr/bin/env bash

# Install Karabiner-Elements 
echo "Installing Karabiner-Elements"

brew install karabiner-elements

# Configure Karabiner-Elements
echo "Configuring Karabiner-Elements"

# Ensure parent config directory exists
mkdir -p "$HOME/.config"

# If the karabiner config path exists (dir or symlink), back it up so
# we can replace it with a symlink to the dotfiles config directory.
if [ -e "$HOME/.config/karabiner" ] || [ -L "$HOME/.config/karabiner" ]; then
	timestamp=$(date +"%Y-%m-%d_%H%M%S")
	echo "Backing up existing $HOME/.config/karabiner to $HOME/.config/karabiner.bak.$timestamp"
	mv "$HOME/.config/karabiner" "$HOME/.config/karabiner.bak.$timestamp"
fi

# Create a symlink so the entire karabiner folder points to the dotfiles config
ln -sfn "$HOME/.dotfiles/karabiner/config" "$HOME/.config/karabiner"

echo "Karabiner-Elements Installation and Configuration Complete"
