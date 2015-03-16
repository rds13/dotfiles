#!/bin/bash
# Install script for ruby via homebrew

# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Check for Homebrew
if test ! $(which brew)
then
  echo "  You should have homebrew installed before installing ruby."
  exit
fi

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you via homebrew."
  brew install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you via homebrew."
  brew install ruby-build > /tmp/ruby-build-install.log
fi
