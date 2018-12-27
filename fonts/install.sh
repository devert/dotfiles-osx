#!/usr/bin/env bash

# Download Operator Mono zip from Google Drive
gdrive download --path ~/Downloads 15FhJ_lkUNTvPX8ErqEqb4ETz6BJ_tZv9

# Unzip the font to ~/Library/Fonts
unzip ~/Downloads/Operator\ Mono.zip -d ~/Library/Fonts

# Cleanup download
rm ~/Downloads/Operator\ Mono.zip

echo "Operator Mono font installed"