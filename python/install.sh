#!/usr/bin/env bash

# TODO: Python installs with pyenv

# Install Python packages
pip install bumpversion
# pip install flake8
# pip install flake8-docstrings
# pip install jedi
# pip install autopep8
# pip install pep8
pip install virtualenv
pip install virtualenvwrapper

# Symlink a global requirements.txt file that is applied to
# every existing and new virtualenv.
mkdir -p ~/.virtualenvs
sudo ln -s ~/.dotfiles/python/global_requirements.txt ~/.virtualenvs/global_requirements.txt
