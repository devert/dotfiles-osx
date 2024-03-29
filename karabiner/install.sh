#!/usr/bin/env bash

echo "Configuring Karabiner-Elements"

mkdir $HOME/.config/karabiner
sudo ln -s $HOME/.dotfiles/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json
