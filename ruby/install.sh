#!/bin/sh

set -e

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build > /tmp/ruby-build-install.log
fi

rbenv install 2.6.3
rbenv global 2.6.3

# Install gems
# gem install bundler
# gem install rake
#gem install rubygems-bundler # no more bundle exec crap
#gem regenerate_binstubs

rbenv rehash
