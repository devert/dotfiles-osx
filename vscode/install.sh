#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing Visual Studio code extensions and config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Do you want to install VSCode extensions? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        echo "Installing extensions please wait..."
        
        code --install-extension DavidAnson.vscode-markdownlint
        code --install-extension EditorConfig.EditorConfig
        code --install-extension PeterJausovec.vscode-docker
        code --install-extension TeddyDD.fish
        code --install-extension Zignd.html-css-class-completion
        code --install-extension alefragnani.Bookmarks
        code --install-extension alefragnani.project-manager
        code --install-extension alexdima.copy-relative-path
        code --install-extension andys8.jest-snippets
        code --install-extension christian-kohler.npm-intellisense
        code --install-extension christian-kohler.path-intellisense
        code --install-extension cmstead.jsrefactor
        code --install-extension cpylua.language-postcss
        code --install-extension cssho.vscode-svgviewer
        code --install-extension dbaeumer.vscode-eslint
        code --install-extension dkundel.vscode-new-file
        code --install-extension dunstontc.viml
        code --install-extension eamodio.gitlens
        code --install-extension esbenp.prettier-vscode
        code --install-extension file-icons.file-icons
        code --install-extension formulahendry.auto-rename-tag
        code --install-extension jpoissonnier.vscode-styled-components
        code --install-extension kisstkondoros.vscode-codemetrics
        code --install-extension monokai.theme-monokai-pro-vscode
        code --install-extension ms-python.python
        code --install-extension ms-vscode.atom-keybindings
        code --install-extension msjsdiag.debugger-for-chrome
        code --install-extension naumovs.color-highlight
        code --install-extension pnp.polacode
        code --install-extension pranaygp.vscode-css-peek
        code --install-extension shinnn.stylelint
        code --install-extension techer.open-in-browser
        code --install-extension vilicvane.es-quotes
        code --install-extension vstirbu.vscode-mermaid-preview
        code --install-extension wix.vscode-import-cost
        code --install-extension wwm.better-align
        code --install-extension yzhang.markdown-all-in-one

        echo "Extensions for VSCode have been installed. Please restart VSCode."
    else
        echo "Skipping extension install.";
    fi

    read -r -p "Do you want to create symlinks to user config and keybindings? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Do you want to back up your current user config and keybindings? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            echo "Skipping user config and keybindings backup."
        else
            cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
            echo "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
            cp $HOME/Library/Application\ Support/Code/User/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.backup.json
            echo "Your previous keybindings have been saved to: $HOME/Library/Application Support/Code/User/keybindings.backup.json"
        fi
        rm -v $HOME/Library/Application\ Support/Code/User/settings.json
        sudo ln -s $HOME/.dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
        rm -v $HOME/Library/Application\ Support/Code/User/keybindings.json
        sudo ln -s $HOME/.dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

        echo "New user config and keybindings have been written. Please restart VSCode."
    else
        echo "Skipping user config overwriting.";
    fi
else
    echo "It looks like the command 'code' isn't accessible."
    echo "Please make sure you have Visual Studio Code installed"
    echo "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi