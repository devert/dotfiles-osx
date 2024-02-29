#!/usr/bin/env zsh

# Path shortcuts
alias db="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias df="cd ~/.dotfiles"
alias p="cd ~/Projects"
alias pp="cd ~/Projects/Personal"

# Shorten commonly typed commands
alias c="cargo"
alias d="docker"
alias dsa="docker stop (docker ps -q)"
alias dka="docker kill (docker ps -q)"
alias dc="docker compose"
alias dce="docker compose exec"
alias dck="docker compose kill"
alias dcu="docker compose up"
alias g="git"
alias kc="kubectl"
alias vim="nvim"
alias v="vim"
alias y="yarn"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Reload shell
alias reload="omz reload"

# Edit .zshrc
alias zshconfig="v ~/.zshrc"

