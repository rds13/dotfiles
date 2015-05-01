#!/bin/bash
# Install script for ruby via homebrew

# OSX-only stuff. Abort if not OSX.
if [[ "$OSTYPE" =~ ^darwin ]]
then

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

else
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  rbenv rehash 2>/dev/null
fi
