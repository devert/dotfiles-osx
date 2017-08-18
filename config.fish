# Fish greeting
echo "Now using fish $FISH_VERSION"

# Location of brew installed bash-git-prompt for fish
set __GIT_PROMPT_DIR /usr/local/share

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

# Load Virtualfish - http://virtualfish.readthedocs.io/en/latest/install.html#installing
eval (python -m virtualfish compat_aliases auto_activation global_requirements)

# Change prompt for Virtualfish
functions -c fish_prompt _old_fish_prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b normal blue) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  _old_fish_prompt
end

# Comma-separated overridden aliases for TheFuck
set -xg THEFUCK_OVERRIDDEN_ALIASES 'git'
