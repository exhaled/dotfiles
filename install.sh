#!/bin/bash
# ~/Documents/Coding/dotfiles/install.sh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

ln -sfn "$DOTFILES_DIR/.agents" ~/.agents
# add more symlinks here as needed

mkdir -p ~/.config
# Remove existing directory so symlink can replace it
[ -d ~/.config/opencode ] && [ ! -L ~/.config/opencode ] && rm -rf ~/.config/opencode
ln -sfn "$DOTFILES_DIR/.config/opencode" ~/.config/opencode