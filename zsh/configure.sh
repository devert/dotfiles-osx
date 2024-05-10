# Put Zsh configuration in place
echo "Configuring Zsh Profile"

sudo ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
sudo ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Install custom Zsh plugins
echo "Installing Custom Zsh Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Install custom Zsh theme
echo "Installing Custom Zsh Theme"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
sudo ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

# Install custom configuration files
sudo ln -s ~/.dotfiles/zsh/aliases.zsh $ZSH_CUSTOM/aliases.zsh
sudo ln -s ~/.dotfiles/zsh/functions.zsh $ZSH_CUSTOM/functions.zsh
sudo ln -s ~/.dotfiles/zsh/exports.zsh $ZSH_CUSTOM/exports.zsh
