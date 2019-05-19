#!/bin/sh
mkdir -p ~/.config/nvim
echo "set runtimepath^=/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim
