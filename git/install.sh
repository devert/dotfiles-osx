#!/usr/bin/env bash

# Symlink .gitconfig and .gitignore_global
sudo ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
sudo ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global

# Configuration settings for Github CLI
mkdir ~/.config/gh
sudo ln -s ~/.dotfiles/git/gh_config.yml ~/.config/gh/config.yml

# Install some GitHub CLI extensions
gh extension install github/gh-copilot
gh extension install gennaro-tedesco/gh-f
