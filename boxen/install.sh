#!/bin/bash

# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || exit 0
[[ -n "$BOXEN_HOME" ]] || exit 0

BOXEN_HOME=${BOXEN_HOME:-/opt/boxen}
echo "I need sudo for boxen installation at /opt/boxen"
[[ -d "$BOXEN_HOME" ]] || sudo mkdir -p "$BOXEN_HOME"
sudo chown ${USER}:staff "$BOXEN_HOME"
echo "I will need your github credential to access our-boxen repo from Deveryware"
git clone git@github.com:Deveryware/our-boxen.git "$BOXEN_HOME/repo"
if [ -d "$BOXEN_HOME/repo" ]
then
  cd "$BOXEN_HOME/repo"
  ./script/boxen --no-fde
else
  echo "Sorry something went wrong, please retry"
fi
