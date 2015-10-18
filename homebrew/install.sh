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

# Install homebrew packages
brew install tree
brew install wget
brew install the_silver_searcher
brew install zsh
#brew install ack
brew install macvim
brew install caskroom/cask/brew-cask

# Setup casks
brew tap phinze/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Install prågrams
#brew cask install dash
#brew cask install google-chrome
brew cask install vlc

# Install fonts
brew cask install font-source-code-pro
brew cask install font-fira-sans

# Yes, cleanup
brew cleanup

exit 0
