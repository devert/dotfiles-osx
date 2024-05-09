#!/usr/bin/env bash

echo "Configuring Karabiner-Elements"

mkdir $HOME/.config/karabiner
sudo ln -s $HOME/.dotfiles/karabiner/config $HOME/.config/karabiner
