#!/usr/bin/env bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install thoughtbot dotfiles
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles
brew tap thoughtbot/formulae
brew install rcm
env RCRC=$HOME/dotfiles/rcrc rcup

# install brew stuff
./brew_install_stuff.sh

