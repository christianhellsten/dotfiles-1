#!/bin/sh
#
# Vundle
#

if [ ! -d "~/.vim/bundle/vundle" ]; then
  echo "  Installing Vundle for you."
  mkdir -p ~/.vim/bundle 2>&1
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
fi

# Undo directory
mkdir -p ~/.vim/undo 2>&1

exit 0
