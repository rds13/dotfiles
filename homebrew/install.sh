#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
#
# Homebrew installation is out of scope here
#

# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

cd "$(dirname $)"

# Check for Homebrew
if command -v brew >/dev/null;
then
  # Install homebrew packages
  brew install grc coreutils spark gawk gnupg2 asciidoc graphviz
fi

exit 0
