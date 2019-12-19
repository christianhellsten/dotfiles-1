#!/bin/sh
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

brew install caskroom/cask/brew-cask # Install homebrew packages
brew install overmind # Procfile
brew install pgpg # Pager for Postgres
# FZF
brew install fzf
brew install Caskroom/cask/xquartz
# FZF END
# TLDR for man pages
brew install isacikgoz/taps/tldr
# STARSHIP
brew install starship
brew install caskroom/fonts/font-fira-code
# STARSHIP END
brew install tree
brew install wget
brew install the_silver_searcher
brew install zsh
brew install nvim

# Setup casks
brew tap phinze/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Spyware:
# brew cask install google-chrome
# Install prågramms
brew cask install firefox
brew cask install vlc

# Install fonts
brew cask install font-source-code-pro
brew cask install font-fira-sans

# Yes, cleanup
brew cleanup

exit 0
