#!/usr/bin/env bash

echo "Configuring Yazi"

sudo mkdir -p $HOME/.config/yazi
sudo ln -sfn $HOME/.dotfiles/yazi/yazi.toml $HOME/.config/yazi/yazi.toml
