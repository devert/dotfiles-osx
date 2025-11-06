# Dotfiles Repository - Improvement Recommendations

This document outlines recommendations for improving the dotfiles repository's maintainability, consistency, and reliability.

## Critical Issues

### Non-Idempotent Symlinks

Most install scripts use `ln -s` without checking if symlinks already exist. This causes failures on re-runs. Consider:

```bash
# Instead of: sudo ln -s source target
ln -sfn ~/.dotfiles/component/file ~/.target  # -f forces, -n treats existing symlink-to-dir correctly
```

### Deprecated Brew Flag

`brew/install.sh:13` uses `brew upgrade --all` (deprecated). Should be just `brew upgrade`

## Consistency & Maintainability

### Inconsistent Sudo Usage

- Some scripts unnecessarily use `sudo` for symlinks in user's home directory (git, neovim, tmux, etc.)
- Symlinks in `~/` don't need sudo; only system locations do
- This creates permission issues and makes cleanup harder

### No Master Install Script

Consider creating a root-level `install.sh` that:

- Orchestrates the installation sequence from README.md
- Handles the zsh reload requirement
- Provides selective installation options
- Shows progress and handles errors gracefully

### Inconsistent Error Handling

- Only vscode checks if its CLI is available
- Other scripts should verify dependencies exist before proceeding:

```bash
if ! command -v neovim &> /dev/null; then
    echo "Neovim not found. Please run brew/install.sh first"
    exit 1
fi
```

### No Backup Strategy

Only vscode prompts for backups. Other scripts should:

- Check for existing configs
- Offer to backup before symlinking
- Store backups in a consistent location (e.g., `~/.dotfiles-backup/`)

### Verification Missing

Scripts don't confirm successful symlink creation:

```bash
if [ -L ~/.zshrc ]; then
    echo "✓ .zshrc symlinked successfully"
else
    echo "✗ Failed to symlink .zshrc"
fi
```

## Documentation

### Incomplete Component READMEs

Only 7/15 components have README files. Missing:

- fonts
- git
- ghostty
- iterm
- karabiner
- leader-key
- node
- python
- tmux
- warp

### TODOs in Production Code

Active TODOs that should be addressed:

- `brew/install.sh:45,60,61,64,74,77` - Multiple TODO comments
- `python/install.sh:3` - "TODO: Python installs with pyenv"
- `fonts/install.sh:3` - "TODO: Switch to Dropbox..."

## Modern Best Practices

### Missing .envrc or .tool-versions Support

Consider adding:

- `.envrc` for direnv support
- `.tool-versions` for asdf compatibility
- Document Node/Python version management strategy

### No Automated Testing

Add a `test.sh` script that verifies:

- All expected symlinks exist
- Shell starts without errors
- Critical tools are accessible
- Configuration files are valid

### No Uninstall/Cleanup Script

Create `uninstall.sh` to:

- Remove all symlinks
- Restore backups
- Leave system in clean state

### Brewfile Alternative

Instead of shell script with hardcoded packages, consider a `Brewfile`:

```ruby
# brew/Brewfile
brew "git"
brew "fzf"
cask "visual-studio-code"
# Then: brew bundle --file=brew/Brewfile
```

This provides:

- Declarative dependency management
- Built-in idempotency
- Easier maintenance

### 15. Pre-commit Hooks

Add `.pre-commit-config.yaml` for:

- Shellcheck validation of bash scripts
- YAML/JSON linting
- Preventing secrets in commits

## Security Considerations

### Unverified Downloads

- `node/install.sh:5` - Downloads NVM script without checksum verification
- `fonts/install.sh:5` - Uses gdrive tool that may not be installed
- Consider adding SHA verification or documenting trust assumptions

### Directory Creation Without Checks

Several scripts create directories without checking permissions:

```bash
# Instead of: mkdir ~/.config/gh
mkdir -p ~/.config/gh || { echo "Failed to create directory"; exit 1; }
```

## Structural Improvements

### Shared Utilities

Create `lib/utils.sh` with common functions:

```bash
# Reusable functions for all install scripts
create_symlink() { ... }
backup_file() { ... }
check_dependency() { ... }
```

### Configuration Variables

Add `config.sh` with centralized settings:

```bash
DOTFILES_DIR="${HOME}/.dotfiles"
BACKUP_DIR="${HOME}/.dotfiles-backup"
```

### Install Order Dependencies

`karabiner/install.sh:5-6` creates dir then symlinks entire config dir - this could fail if Karabiner creates files there first. Consider more robust directory handling.

## Nice-to-Have Enhancements

21. **GitHub Actions CI** - Test install scripts in clean macOS environment
22. **Makefile** - Provide `make install`, `make test`, `make clean` targets
23. **Conditional macOS version checks** - Some defaults may not work on all macOS versions
24. **Logging** - Redirect install output to timestamped log files
25. **Completion indicators** - Add visual feedback for long-running operations

## Priority Recommendations

If you want to tackle these incrementally, suggested order:

1. Fix shebangs (quick fix)
2. Remove unnecessary sudo usage
3. Make symlinks idempotent with `-sfn`
4. Create master install script
5. Add basic error handling and dependency checks
6. Consider Brewfile migration
7. Add testing/verification script

## Implementation Notes

These recommendations are based on analysis of the repository structure and install scripts. Each improvement should be tested in a safe environment before applying to production dotfiles.
