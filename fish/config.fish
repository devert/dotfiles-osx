# Fish greeting
echo "Now using fish $FISH_VERSION"

# Location of brew installed bash-git-prompt for fish
set __GIT_PROMPT_DIR /usr/local/share

# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias db="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias df="cd ~/.dotfiles"
alias p="cd ~/Projects"

# Shorten commonly typed
alias d="docker"
alias dsa="docker stop (docker ps -q)"
alias dka="docker kill (docker ps -q)"
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias g="git"
alias up="itermocil"
alias vim="nvim"
alias v="vim"
alias y="yarn"

# https://hub.github.com/
alias git=hub

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec fish"

# Web serve current directory at a specified port
alias serve="python -m SimpleHTTPServer"

# Load Virtualfish - http://virtualfish.readthedocs.io/en/latest/install.h``tml#installing
eval (python -m virtualfish compat_aliases auto_activation global_requirements)

# Change prompt for Virtualfish
functions -c fish_prompt _old_fish_prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b normal blue) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  _old_fish_prompt
end

# Extra machine specific configuration
if test -e ~/.dotfiles/fish/extra_config.fish
    source ~/.dotfiles/fish/extra_config.fish
end
