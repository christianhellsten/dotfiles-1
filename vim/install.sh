#!/bin/sh
#
# Vundle
#

# Check for Homebrew
if [ ! -d "~/.vim/bundle/vundle" ]; then
  echo "  Installing Vundle for you."
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
fi

# Undo directory
mkdir ~/.vim/undo

exit 0
