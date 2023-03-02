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

        code --install-extension alefragnani.Bookmarks
        code --install-extension alefragnani.project-manager
        code --install-extension alexdima.copy-relative-path
        code --install-extension ambooth.git-rename
        code --install-extension andys8.jest-snippets
        code --install-extension bpruitt-goddard.mermaid-markdown-syntax-highlighting
        code --install-extension BriteSnow.vscode-toggle-quotes
        code --install-extension bungcip.better-toml
        code --install-extension ChakrounAnas.turbo-console-log
        code --install-extension christian-kohler.npm-intellisense
        code --install-extension christian-kohler.path-intellisense
        code --install-extension cmstead.js-codeformer
        code --install-extension codemooseus.vscode-devtools-for-chrome
        code --install-extension cssho.vscode-svgviewer
        code --install-extension DavidAnson.vscode-markdownlint
        code --install-extension dbaeumer.vscode-eslint
        code --install-extension donjayamanne.githistory
        code --install-extension dsznajder.es7-react-js-snippets
        code --install-extension dunstontc.viml
        code --install-extension eamodio.gitlens
        code --install-extension earshinov.permute-lines
        code --install-extension EditorConfig.EditorConfig
        code --install-extension esbenp.prettier-vscode
        code --install-extension formulahendry.auto-close-tag
        code --install-extension frhtylcn.pythonsnippets
        code --install-extension gottfired.css2react
        code --install-extension GrapeCity.gc-excelviewer
        code --install-extension GraphQL.vscode-graphql
        code --install-extension GraphQL.vscode-graphql-execution
        code --install-extension GraphQL.vscode-graphql-syntax
        code --install-extension inu1255.easy-snippet
        code --install-extension KevinRose.vsc-python-indent
        code --install-extension monokai.theme-monokai-pro-vscode
        code --install-extension ms-azuretools.vscode-docker
        code --install-extension ms-playwright.playwright
        code --install-extension ms-python.isort
        code --install-extension ms-python.python
        code --install-extension ms-python.vscode-pylance
        code --install-extension ms-vscode.atom-keybindings
        code --install-extension ms-vsliveshare.vsliveshare
        code --install-extension naumovs.color-highlight
        code --install-extension njpwerner.autodocstring
        code --install-extension patbenatar.advanced-new-file
        code --install-extension paulmolluzzo.convert-css-in-js
        code --install-extension rust-lang.rust-analyzer
        code --install-extension SimonSiefke.auto-rename-tag
        code --install-extension skyapps.fish-vscode
        code --install-extension sleistner.vscode-fileutils
        code --install-extension streetsidesoftware.code-spell-checker
        code --install-extension techer.open-in-browser
        code --install-extension vscodeshift.material-ui-codemorphs
        code --install-extension vscodevim.vim
        code --install-extension vstirbu.vscode-mermaid-preview
        code --install-extension wmaurer.change-case
        code --install-extension yzhang.markdown-all-in-one
        code --install-extension ZixuanChen.vitest-explorer

        echo "Extensions for VSCode have been installed. Please restart VSCode."
    else
        echo "Skipping extension install.";
    fi

    read -r -p "Do you want to create symlinks to user config, keybindings and snippets? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Do you want to back up your current user config, keybindings and snippets? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            echo "Skipping user config, keybindings and snippets backup."
        else
            cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
            echo "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
            cp $HOME/Library/Application\ Support/Code/User/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.backup.json
            echo "Your previous keybindings have been saved to: $HOME/Library/Application Support/Code/User/keybindings.backup.json"
            cp -R $HOME/Library/Application\ Support/Code/User/snippets $HOME/Library/Application\ Support/Code/User/snippets.backup
            echo "Your previous snippets have been saved to: $HOME/Library/Application Support/Code/User/snippets.backup"
        fi
        rm -v $HOME/Library/Application\ Support/Code/User/settings.json
        sudo ln -s $HOME/.dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
        rm -v $HOME/Library/Application\ Support/Code/User/keybindings.json
        sudo ln -s $HOME/.dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
        rm -rf $HOME/Library/Application\ Support/Code/User/snippets
        sudo ln -s $HOME/.dotfiles/vscode/snippets $HOME/Library/Application\ Support/Code/User/snippets
        echo "New user config and keybindings have been written. Please restart VSCode."
    else
        echo "Skipping user config overwriting.";
    fi

    read -r -p "Do you want to create a symlink to project manager projects.json? [y|N] " projectsresponse
    if [[ $projectsresponse =~ ^(y|yes|Y) ]]; then
        if [ ! -f "$HOME/Library/Application\ Support/Code/User/globalStorage/alefragnani.project-manager/projects.json" ]; then
            mkdir -p $HOME/Library/Application\ Support/Code/User/globalStorage/alefragnani.project-manager
            touch $HOME/Library/Application\ Support/Code/User/globalStorage/alefragnani.project-manager/projects.json
        fi
        sudo ln -s $HOME/Library/Application\ Support/Code/User/globalStorage/alefragnani.project-manager/projects.json $HOME/Library/Application\ Support/Code/User/projects.json
    else
        echo "Skipping project manager projects.json symlink.";
    fi
else
    echo "It looks like the command 'code' isn't accessible."
    echo "Please make sure you have Visual Studio Code installed"
    echo "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi
