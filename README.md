# OSX Dotfiles

Setup, software installation and dotfiles for OSX.

## Install Command Line Tools (CLT) for Xcode

```sh
xcode-select --install
```

[developer.apple.com/downloads](https://developer.apple.com/downloads) or [Xcode 3](https://itunes.apple.com/us/app/xcode/id497799835)

## Install [Homebrew](http://brew.sh/) and Git

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
```

## Checkout dotfiles project

[Generate SSH Key](https://help.github.com/articles/connecting-to-github-with-ssh/) and add it to GitHub [profile](https://github.com/settings/keys). Then pull the repo using the following steps.

```sh
cd ~/
mkdir .dotfiles
cd .dotfiles
git init
git remote add origin git@github.com:devert/dotfiles-osx.git
git pull origin master
```

## Configure sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```sh
./macos/install.sh
```

## Install and Configure Bash

```sh
./bash/install.sh
```

## Install Homebrew Packages and Casks

```sh
./brew/install.sh
```

NOTE: You will likely have to rerun the cask install for Virtualbox

## Install Node and Python

```sh
mkdir -p ~/.nvm
  
reload

./node/install.sh
./python/install.sh
```

## Install Fish Shell And Make Default Shell

```sh
./fish/install.sh
reload
./fish/configure.sh
```

## Run remaining install scripts

```sh
./fonts/install.sh
./git/install.sh
./neovim/install.sh
./tmux/install.sh
./vscode/install.sh
```

## Configure iTerm2

## Configure Alfred

## Heavily influenced by the following .dotfiles projects

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Pawel Grzybek](https://github.com/pawelgrzybek/dotfiles)
- [Springload](https://github.com/springload/dotfiles)
