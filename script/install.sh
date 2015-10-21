#!/bin/bash
#
# This scripts automates installation of https://github.com/rds13/dotfiles.
#
# AUTHORNAME : git author name
# AUTHOREMAIL : git authir email
#
# automate installation like this :
# AUTHORNAME="John Doe" AUTHOREMAIL="john@doe.org" bash -c "$(curl -fsSL https://raw.github.com/rds13/dotfiles/master/script/install.sh)"
#
#
[[ ! -d ~/src ]] && mkdir ~/src
cd ~/src
[[ ! -d dotfiles ]] && git clone https://github.com/rds13/dotfiles
cd dotfiles && source ./script/local_install
