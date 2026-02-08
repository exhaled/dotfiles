#!/bin/bash
# ~/Documents/Coding/dotfiles/install.sh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

ln -sf "$DOTFILES_DIR/.agents" ~/.agents
# add more symlinks here as needed