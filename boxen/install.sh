#!/bin/bash

# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || return 1

if ! [ -d /opt/boxen ]
then
  echo "I need sudo for /opt/boxen installation"
  sudo mkdir -p /opt/boxen
  sudo chown ${USER}:staff /opt/boxen
  echo "I will need your github credential to access our-boxen repo from Deveryware"
  git clone git@github.com:Deveryware/our-boxen.git /opt/boxen/repo
  if [ -d /opt/boxen/repo ]
  then
    cd /opt/boxen/repo
    ./script/boxen --no-fde
  else
    echo "Sorry something went wrong, please retry"
  fi
fi
