# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias db="cd ~/Dropbox\ \(Personal\)/"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias df="cd ~/.dotfiles"
alias p="cd ~/Projects"

# Shorten commonly typed
alias d="docker"
alias dsa="docker stop (docker ps -q)"
alias dka="docker kill (docker ps -q)"
alias dc="docker-compose"
alias dce="docker-compose exec"
alias dck="docker-compose kill"
alias dcu="docker-compose up"
alias g="git"
alias up="itermocil"
alias vim="nvim"
alias v="vim"
alias y="yarn"

# https://hub.github.com/
alias git=hub

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec fish"