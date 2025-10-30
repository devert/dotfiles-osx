#!/usr/bin/env bash

echo "Configuring Leader Key"

mkdir $HOME/.config/leader-key
sudo ln -s $HOME/.dotfiles/leader-key/config.json $HOME/.config/leader-key
