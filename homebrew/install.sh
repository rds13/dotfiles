#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

cd "$(dirname $)"
if [ "$(uname -s)" = "Darwin" ]
then
  # Don't try to install homebrew if boxen is doing the same
  if ! [ -f "boxen/install.sh" ]
  then
    # Check for Homebrew
    if [ ! $(which brew >/dev/null 2>&1) ]
    then
      echo "  Installing Homebrew for you."
      ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
    fi
  fi

  # Install homebrew packages
  brew install grc coreutils spark gawk maven30 gpg
fi

exit 0
