# Fish greeting
echo "Now using fish $FISH_VERSION"

# Location of brew installed bash-git-prompt for fish
set __GIT_PROMPT_DIR /usr/local/share

# Set brew installed curl
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths

# Load aliases
if test -e ~/.dotfiles/fish/aliases.fish
  source ~/.dotfiles/fish/aliases.fish
end

# Load functions
if test -e ~/.dotfiles/fish/functions.fish
  source ~/.dotfiles/fish/functions.fish
end

# Extra machine specific configuration
if test -e ~/.dotfiles/fish/extra_config.fish
  source ~/.dotfiles/fish/extra_config.fish
end

# Init Pyenv environment automatically
if type -q pyenv
  status --is-interactive; and pyenv init - | source
  status --is-interactive; and pyenv virtualenv-init - | source
end

# Load asdf
if type -q asdf
  source (brew --prefix asdf)/asdf.fish
end

# Change prompt for Virtualfish
functions -c fish_prompt _old_fish_prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b normal blue) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  _old_fish_prompt
end
