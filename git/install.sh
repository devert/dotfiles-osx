#!/usr/bin/env bash

# Symlink .gitconfig and .gitignore_global
sudo ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
sudo ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global

# Configuration settings for Github CLI
sudo ln -s ~/.dotfiles/git/gh_config.yml ~/.config/gh/config.yml
