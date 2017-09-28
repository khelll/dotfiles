#!/usr/bin/env bash
#
# run this file with:
# `cd ~/dotfiles-local && ./brew_install_stuff.sh`

set -x
set -e

### first off, update all brew installed crap we already have before going forward
## house cleaning round 1
brew update
brew cleanup -s
brew prune
brew outdated
brew tap homebrew/bundle
brew bundle