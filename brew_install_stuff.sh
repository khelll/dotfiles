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

### version control systems
# brew options git
brew install 'curl' --with-openssl
brew install 'git' --with-pcre --with-brewed-curl --with-brewed-openssl
brew install 'hub'

### http tools
brew install 'httpie'
brew install 'homebrew/apache/ab'
brew install 'jq'

### gnu userland utils
brew tap homebrew/dupes
brew install 'ack'
brew install 'binutils'
brew install 'coreutils'
brew install 'diffutils'
brew install 'findutils'
brew install 'gawk'
brew install 'gnu-indent'
brew install 'gnu-sed'
brew install 'gnu-tar'
brew install 'gnutls'
brew install 'grep' # gnu grep is in homebrew/dupes
brew install 'gzip'
brew install 'less'
brew install 'htop'
brew install 'fzf'

### dbs
brew install 'mysql@5.7'
brew services stop 'mysql@5.7'
brew link --force 'mysql@5.7'

brew install 'postgresql@9.6'
brew services stop 'postgresql@9.6'
brew link --force 'postgresql@9.6'

brew install 'memcached'
brew services stop 'memcached'
brew install 'redis'
brew services stop 'redis'

