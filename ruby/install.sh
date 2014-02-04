#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  You should have homebrew install before installing ruby"
  exit -1
fi

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
