#!/bin/sh
set -e
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

export HOMEBREW_NO_AUTO_UPDATE=1

brew install overmind || true # Procfile
# FZF
brew install fzf || true
# FZF END
# TLDR for man pages
brew install isacikgoz/taps/tldr || true
# STARSHIP
brew install starship || true
brew install homebrew/cask-fonts/font-fira-code || true
# STARSHIP END
brew install tree || true
brew install repren || true # rename anything
brew install wget || true
brew install the_silver_searcher || true # ag
brew install zsh || true
brew install nvim || true
brew install direnv || true # .envrc loader

# Setup casks
#brew tap homebrew/cask-versions
#brew tap homebrew/cask-fonts

# Spyware:
# brew cask install google-chrome
# Install prågramms
brew install --cask firefox || true
brew install --cask vlc || true

# Install fonts (svn needed)
brew install svn
brew install --cask font-fira-code font-fira-sans font-hack-nerd-font font-source-code-pro

# Yes, cleanup
brew cleanup

exit 0
