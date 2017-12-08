#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Install Oh My Fish
curl -L https://get.oh-my.fish | fish

# Install bash-git-prompt for fish
mkdir -p ~/.config/fish/functions
sudo ln -s /usr/local/share/gitprompt.fish ~/.config/fish/functions/fish_prompt.fish
sudo ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish

# Install Oh My Fish Packages
omf install hub
omf install thefuck
omf install brew
omf install nvm
omf install virtualfish