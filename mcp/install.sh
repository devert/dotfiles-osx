#!/usr/bin/env bash

# Make directories for mcp
mkdir -p ~/.mcp ~/.mcp/servers ~/.mcp/logs

# Symlink mcp config file
sudo ln -sfn ~/.dotfiles/mcp/mcp-config.json ~/.mcp/mcp-config.json

# Symlink for Claude Code
sudo mkdir -p /Library/Application\ Support/ClaudeCode
sudo ln -sfn ~/.dotfiles/mcp/mcp-config.json /Library/Application\ Support/ClaudeCode/managed-mcp.json

# Symlink for VSCode
sudo ln -sfn ~/.dotfiles/mcp/mcp-config.json ~/Library/Application\ Support/Code/User/mcp.json

# Install mcp servers
# TODO: Add server installation commands here
# echo "Installing MCP servers..."

echo "MCP installation complete."
