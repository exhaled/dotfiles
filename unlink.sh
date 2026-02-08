#!/bin/bash
# ~/Documents/Coding/dotfiles/unlink.sh
# Removes symlinks created by install.sh

remove_symlink() {
  if [ -L "$1" ]; then
    rm "$1"
    echo "Removed: $1"
  else
    echo "Skipped (not a symlink): $1"
  fi
}

remove_symlink ~/.agents
remove_symlink ~/.config/opencode
