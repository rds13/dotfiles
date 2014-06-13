#!/bin/sh
#
# Install vim dependencies : vundle
[ -d ~/.vim ] || mkdir ~/.vim
[ -d ~/.vim/bundle ] || mkdir ~/.vim/bundle
[ -d ~/.vim/bundle/vundle ] || git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
[ -d ~/.vim/after ] || mkdir ~/.vim/after
[ -d ~/.vim/after/plugin ] || mkdir ~/.vim/after/plugin
cp vim/tabular.vim ~/.vim/after/plugin
vim --noplugin -N \"+set hidden\" \"+syntax on\" +BundleClean +BundleInstall +qall
