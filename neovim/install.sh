#!/usr/bin/env bash

# Symlink neovim config files
sudo ln -s ~/.dotfiles/neovim/init.lua ~/.config/nvim/init.lua
sudo ln -s ~/.dotfiles/neovim/lazy-lock.json ~/.config/nvim/lazy-lock.json
sudo ln -s ~/.dotfiles/neovim/lua ~/.config/nvim/lua
