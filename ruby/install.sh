#!/bin/bash
# Install script for ruby via homebrew

# OSX-only stuff. Abort if not OSX.
if [[ "$OSTYPE" =~ ^darwin ]]
then

  # Check for Homebrew
  if ! command -v brew >/dev/null;
  then
    echo "  You should have homebrew installed before installing ruby."
    exit
  fi

  if ! command -v rbenv >/dev/null;
  then
    echo "  Installing rbenv for you via homebrew."
    brew install rbenv > /tmp/rbenv-install.log
  fi

  if ! command -v ruby-build >/dev/null;
  then
    echo "  Installing ruby-build for you via homebrew."
    brew install ruby-build > /tmp/ruby-build-install.log
  fi

else
  if [[ -d ~/.rbenv ]]
  then
    cd ~/.rbenv && git pull --rebase origin master
  else
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  fi
  if [[ -d ~/.rbenv/plugins/ruby-build ]]
  then
    cd ~/.rbenv/plugins/ruby-build && git pull --rebase origin master
  else
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  fi
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  rbenv rehash 2>/dev/null
fi
