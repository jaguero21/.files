#!/usr/bin/env bash
# Idempotent symlink setup for dotfiles.
# Safe to re-run — ln -sf overwrites existing links.
#
# Prerequisites:
#   - TPM (auto-bootstrapped by tmux.conf on first launch)

set -euo pipefail

DOTFILES="$HOME/.dotfiles"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"
  mkdir -p "$(dirname "$dst")"
  # Remove existing symlink/dir first so ln doesn't follow into directories
  [ -L "$dst" ] && rm "$dst"
  ln -sf "$src" "$dst"
  echo "  $dst → $src"
}

echo "Linking dotfiles..."

link nvim              ~/.config/nvim
link zsh/.zshrc        ~/.zshrc
link zsh/.zprofile     ~/.zprofile
link gitconfig         ~/.gitconfig
link git/ignore        ~/.config/git/ignore
link gh/config.yml     ~/.config/gh/config.yml
link tmux/tmux.conf    ~/.config/tmux/tmux.conf

echo "Done."
