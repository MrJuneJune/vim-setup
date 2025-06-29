#!/bin/bash

set -e

# Not using plugin management since it is cancer
PLUG_DIR="$HOME/.vim/pack/plugins/start"
THEME_DIR="$HOME/.vim/pack/themes/start"
NEOVIM_DIR="$HOME/.config/nvim/pack" 

mkdir -p "$NEOVIM_DIR"
mkdir -p "$PLUG_DIR"
mkdir -p "$THEME_DIR"

echo "---Installing system dependencies---"
if [[ "$(uname)" == "Darwin" ]]; then
  echo "Assuming OS is mac"
  brew install ripgrep vim git curl neovim
else
  echo "Assuming OS is linux"
  sudo apt update
  sudo apt install -y ripgrep vim git curl neovim
fi

echo "---Installing fzf binary---"
if [ ! -d "$HOME/.fzf" ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --no-key-bindings --no-completion --no-update-rc
else
  echo "fzf already installed"
fi

echo "---Installing fzf.vim---"
git clone --depth 1 https://github.com/junegunn/fzf.vim.git "$PLUG_DIR/fzf.vim"

echo "Linking fzf Vim plugin files..."
ln -sf ~/.fzf/plugin "$PLUG_DIR/fzf"
ln -sf ~/.fzf/autoload "$PLUG_DIR/fzf"

echo "---Installing wiki.vim---"
git clone --depth 1 https://github.com/lervag/wiki.vim.git "$PLUG_DIR/wiki.vim"

echo "---Installing nightfly colorscheme---"
git clone --depth 1 https://github.com/bluz71/vim-nightfly-colors.git "$THEME_DIR/nightfly"

echo "---Link to neovim---"
ln -s ~/.vim/pack ~/.config/nvim/pack

echo "---Set vimrc into neovim"
cat > ~/.config/nvim/init.vim <<EOF
" Neovim compatibility for Vim config
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

EOF

cat .vimrc >> ~/.config/nvim/init.vim
