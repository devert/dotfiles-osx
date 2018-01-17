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

## Install Homebrew Packages and Casks

```sh
cd ~/.dotfiles
bash brew.sh
```

## Make symbolic links to files

```sh
cd ~/
sudo ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
sudo ln -s ~/.dotfiles/.bashrc ~/.bashrc
sudo ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
sudo ln -s ~/.dotfiles/.gitignore ~/.gitignore_global
sudo ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
sudo ln -s ~/.dotfiles/nvm_default_packages ~/.nvm/default-packages
```

## Run additional install scripts

```sh
bash node.sh
bash python.sh
bash atom.sh
bash fish.sh
```

## Heavily influenced by the following .dotfiles projects

* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
