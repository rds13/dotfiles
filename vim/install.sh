#!/bin/bash
#
# Install vim dependencies : vundle

if test $(which vim)
then
  BASE="$(pwd)"
  [ -d ~/.vim ] || mkdir ~/.vim
  [ -d ~/.vim/bundle ] || mkdir ~/.vim/bundle
  [ -d ~/.vim/bundle/vundle ] || git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  [ -d ~/.vim/after ] || mkdir ~/.vim/after
  [ -d ~/.vim/after/plugin ] || mkdir ~/.vim/after/plugin
  cp vim/tabular.vim ~/.vim/after/plugin
  ln -s "${BASE}/vim/vundles.vim" ~/.vim/vundles.vim
  vim -u ~/.vim/vundles.vim --noplugin -N "+set hidden" "+syntax on" +BundleClean +BundleInstall +qall
else
  echo "You should probably have installed Vim before this."
fi
exit 0
