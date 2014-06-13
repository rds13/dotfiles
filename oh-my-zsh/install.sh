#!/bin/sh
#
# Install oh-my-zsh
#

cd "$(dirname $)"
set -e

if [ ! -d ~/.oh-my-zsh ]
then
  # install oh-my-zsh in same dir that dotfiles
  cd ..
  git clone https://github.com/robbyrussell/oh-my-zsh.git oh-my-zsh
  ln -s ~/.oh-my-zsh oh-my-zsh
fi
