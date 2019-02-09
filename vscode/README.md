# Visual Studio Code Setup

## Use of the install script

First of all, make sure you've installed Visual Studio Code with Homebrew Cask and went through [this process](https://code.visualstudio.com/docs/setup/mac#_command-line) to install `code` shell command.

Now run these commands:

```sh
cd ~/.dotfiles/vscode
./install.sh
```

The script asks you if you want to install the extensions. Type `y` for yes. Defaults to no.

`Do you want to install VSCode extensions? [y|N]`

This will install or update to the last version of all the extensions [listed below] (#useful-extensions)
Then you will be asked if you want to overwrite your own config.

`Do you want to create symlinks to user config and keybindings? [y|N]`

If you answer `y`, you will have the possibility to save your previous config and keybindings as a backup.

`Do you want to back up your current user config and keybindings? [Y|n]`

Then the script will create a symlink to the dotfiles configs for VSCode user config and keybindings.

You will need to restart your Visual Studio Code for all the above to take effect.

## Updating the list of extensions

From time to time the commands to install extensions in `vscode/install.sh` should be updated. Run the below command to get a new list of the latest extensions you have installed in VSCode.

```sh
code --list-extensions | xargs -L 1 echo code --install-extension
```
