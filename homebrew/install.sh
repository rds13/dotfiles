#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

cd "$(dirname $)"
# Check for Homebrew
if [ ! $(which brew >/dev/null 2>&1) ]
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for Homebrew
if command -v brew >/dev/null;
then
  # Install homebrew packages
  brew install grc coreutils spark gawk gnupg2 asciidoc
fi

exit 0
