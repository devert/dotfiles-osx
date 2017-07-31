# Location of brew installed bash-git-prompt for fish
set __GIT_PROMPT_DIR /usr/local/share

# Comma-separated overridden aliases for TheFuck
set -xg THEFUCK_OVERRIDDEN_ALIASES 'git'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias db="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"

# https://hub.github.com/
alias git=hub

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec fish"
