# Homebrew
# -------------------------------------------------------------

# Doing this manually to avoid running "brew shellenv" on startup. Improves startup time.
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

# Add homebrew to PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# Add brew installed curl to path
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Pyenv
# ------------------------------------------------------------

# Pyenv configuration (manual PATH setup instead of eval "$(pyenv init --path)" for faster startup)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Disable virtualenv name in prompt
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Install pyenv into your shell as a shell function, enable shims and autocompletion
export PATH="$PYENV_ROOT/shims:$PATH"

# Enable auto-activation of pyenv virtualenvs
eval "$(pyenv virtualenv-init -)"
