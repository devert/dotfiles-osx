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
git pull
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
