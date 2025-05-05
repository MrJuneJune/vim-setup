#!/bin/bash

set -e

# Not using plugin management since it is cancer
PLUG_DIR="$HOME/.vim/pack/plugins/start"
THEME_DIR="$HOME/.vim/pack/themes/start"

mkdir -p "$PLUG_DIR"
mkdir -p "$THEME_DIR"

echo "Installing fzf binary..."
if [ ! -d "$HOME/.fzf" ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --no-key-bindings --no-completion --no-update-rc
else
  echo "fzf already installed"
fi

echo "Installing fzf.vim..."
git clone --depth 1 https://github.com/junegunn/fzf.vim.git "$PLUG_DIR/fzf.vim"

echo "Installing wiki.vim..."
git clone --depth 1 https://github.com/lervag/wiki.vim.git "$PLUG_DIR/wiki.vim"

echo "Installing nightfly colorscheme..."
git clone --depth 1 https://github.com/bluz71/vim-nightfly-colors.git "$THEME_DIR/nightfly"

echo "Installing system dependencies..."

# Install whatever needed
sudo apt update
sudo apt install -y ripgrep vim git curl
