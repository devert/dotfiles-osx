#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Install Oh My Fish
curl -L https://get.oh-my.fish | fish

# Install bash-git-prompt for fish
mkdir -p ~/.config/fish/functions
sudo ln -s /usr/local/share/gitprompt.fish ~/.config/fish/functions/fish_prompt.fish
sudo ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish

# Install Oh My Fish Packages
omf install bass
omf install brew
omf install foreign-env
omf install hub
omf install nvm
omf install virtualfish
omf install z

# Remove default fish greeting
set fish_greeting

# Switch to using fish as default shell
if ! fgrep -q '/usr/local/bin/fish' /etc/shells; then
  echo '/usr/local/bin/fish' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/fish;
fi;
