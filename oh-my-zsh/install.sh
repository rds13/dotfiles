#!/bin/bash
#
# Install oh-my-zsh
#

cd "$(dirname $)"
BASE="$(pwd)"

if [ ! -d "${HOME}/.oh-my-zsh" ]
then
  # install oh-my-zsh in same dir that dotfiles
  cd ..
  git clone https://github.com/robbyrussell/oh-my-zsh.git oh-my-zsh
  ln -s "${BASE}/../oh-my-zsh" "${HOME}/.oh-my-zsh"
fi
