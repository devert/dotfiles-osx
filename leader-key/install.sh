#!/usr/bin/env zsh

# Install Karabiner-Elements 
echo "Installing Leader Key"

brew install leader-key

# Configure Leader Key
echo "Configuring Leader Key"

export LK_CONFIG_DIR="$HOME/Library/Application Support/Leader Key"
export LK_CONFIG_PATH="$LK_CONFIG_DIR/config.json"

# If the existing Leader Key config exists, back it up so
# we can replace it with a symlink to the dotfiles config.
if [ -e "$LK_CONFIG_PATH" ] || [ -L "$LK_CONFIG_PATH" ]; then
	timestamp=$(date +"%Y-%m-%d_%H%M%S")
	echo "Backing up existing config to config.json.bak.$timestamp"
	mv "$LK_CONFIG_PATH" "$LK_CONFIG_DIR/config.json.bak.$timestamp"
fi

# Create a symlink so the entire leader-key folder points to the dotfiles config
ln -sfn "$HOME/.dotfiles/leader-key/config.json" "$LK_CONFIG_PATH"

echo "Leader Key Installation and Configuration Complete"
echo "Go to Leader Key Preferences to Configure Your Shortcuts"
