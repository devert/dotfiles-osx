#!/usr/bin/env zsh

# Put Zsh configuration in place
echo "Configuring Zsh Profile..."

sudo ln -sfn ~/.dotfiles/zsh/.zprofile ~/.zprofile
sudo ln -sfn ~/.dotfiles/zsh/.zshrc ~/.zshrc
touch ~/.hushlogin

# Install custom Zsh plugins
echo "Installing Custom Zsh Plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Install custom Zsh theme
echo "Installing Custom Zsh Theme..."
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
sudo ln -sfn ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

# Install custom configuration files
echo "Installing Custom Zsh Configuration Files..."
sudo ln -sfn ~/.dotfiles/zsh/aliases.zsh $ZSH_CUSTOM/aliases.zsh
sudo ln -sfn ~/.dotfiles/zsh/functions.zsh $ZSH_CUSTOM/functions.zsh
sudo ln -sfn ~/.dotfiles/zsh/exports.zsh $ZSH_CUSTOM/exports.zsh

echo "Zsh Configuration Complete!"
