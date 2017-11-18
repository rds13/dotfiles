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
  git clone  --depth 1 https://github.com/robbyrussell/oh-my-zsh.git oh-my-zsh
  ln -s "${BASE}/../oh-my-zsh" "${HOME}/.oh-my-zsh"
fi
if [ ! -d powerlevel9k ]
then
  cd "$(dirname $)"/..
  git clone --depth 1 https://github.com/bhilburn/powerlevel9k.git powerlevel9k
fi
