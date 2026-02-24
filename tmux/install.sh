#!/usr/bin/env bash

# Install tmux configuration
ln -sfn ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "Tmux configuration installed."

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Tmux Plugin Manager installed."

~/.tmux/plugins/tpm/bin/install_plugins
echo "Tmux plugins installed."

echo "Tmux installation complete!"
