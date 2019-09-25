#!/usr/bin/env bash

# Install Python packages
pip install bumpversion
pip install flake8
pip install flake8-docstrings
pip install jedi
pip install autopep8
pip install pep8
pip install virtualenv
pip install virtualenvwrapper
pip install virtualfish

# Symlink a global requirements.txt file that is applied to 
# every existing and new virtualenv. 
mkdir -p ~/.virtualenv
sudo ln -s ~/.dotfiles/python/global_requirements.txt ~/.virtualenv/global_requirements.txt