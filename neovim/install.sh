#!/usr/bin/env bash

NVIM_CONF_DIR=~/.config/nvim
VIM_PLUG_REPO=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

installPluginManager() {
    curl -sfLo ${NVIM_CONF_DIR}/autoload/plug.vim --create-dirs ${VIM_PLUG_REPO}

    if [ "$?" -ne 0 ]; then
        fail "Downloading Plugin manager failed"
    fi
}

# Ensure config directory
mkdir -p ${NVIM_CONF_DIR}

# Ensure plugin directory
mkdir -p ~/.local/share/nvim/plugged

# Symlink to init.vim
sudo ln -s ~/.dotfiles/neovim/init.vim ~/.config/nvim/init.vim

# Install vim-plug
installPluginManager

# Install Plugins
nvim +PlugUpgrade +PlugInstall +qa!