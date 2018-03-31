# OSX Dotfiles

Setup, software installation and dotfiles for OSX.

## Checkout dotfiles project

```sh
cd ~/
mkdir .dotfiles
cd .dotfiles
git init
git remote add origin git@github.com:devert/dotfiles-osx.git
git pull
```

## Install [Homebrew](http://brew.sh/)

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install Homebrew Packages and Casks

```sh
cd ~/.dotfiles
./brew/install.sh
```

## Run additional install scripts

```sh
./bash/install.sh
./fish/install.sh
./git/install.sh
./node/install.sh
./python/install.sh
./tmux/install.sh
./vscode/install.sh
```

## Heavily influenced by the following .dotfiles projects

* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Springload](https://github.com/springload/dotfiles)
