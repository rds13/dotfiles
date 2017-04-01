#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

cd "$(dirname $)"
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

# Check for Homebrew
if command -v brew >/dev/null;
then
  # Install homebrew packages
  brew install grc coreutils spark gawk maven30 gnupg gnupg2 gpg-agent asciidoc graphviz
fi

exit 0
