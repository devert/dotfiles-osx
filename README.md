# OSX Dotfiles

Setup, software installation and dotfiles for OSX.

## Install [Homebrew](http://brew.sh/)

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Checkout dotfiles project

```sh
cd ~/
mkdir .dotfiles
cd .dotfiles
git init
git remote add origin git@github.com:devert/dotfiles-osx.git
git pull
```

## Make symbolic links to files

```sh
cd ~/
sudo ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
sudo ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
sudo ln -s ~/.dotfiles/.gitignore ~/.gitignore
```

## Install Homebrew Packages

```sh
cd ~/.dotfiles
bash brew.sh
```
