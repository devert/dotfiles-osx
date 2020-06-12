#!/usr/local/bin/fish

# Ask for the administrator password upfront.
sudo -v

# Install Oh My Fish
curl -L https://get.oh-my.fish | fish

# Install bash-git-prompt for fish
mkdir -p ~/.config/fish/functions
sudo ln -s /usr/local/share/gitprompt.fish ~/.config/fish/functions/fish_prompt.fish

# Symlink config and kebindings
sudo ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
sudo ln -s ~/.dotfiles/fish/fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish

# Install Oh My Fish Packages
omf install bass
omf install brew
omf install foreign-env
omf install pyenv
omf install virtualfish
omf install z

# Install Fast NVM Fish
# https://github.com/brigand/fast-nvm-fish
curl -sSL https://raw.githubusercontent.com/brigand/fast-nvm-fish/master/nvm.fish > ~/.config/fish/functions/nvm.fish

# Remove default fish greeting
set fish_greeting
