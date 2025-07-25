# Add homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add brew installed curl to path
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Add poetry to path
# export PATH="/opt/poetry/bin:$PATH"

# Add pyenv to path and configure auto initialization
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Install pyenv into your shell as a shell function, enable shims and autocompletion
eval "$(pyenv init --path)"

# Enable auto-activation of pyenv virtualenvs
eval "$(pyenv virtualenv-init -)"
