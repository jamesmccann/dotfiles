#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install packages via homebrew and homebrew-cask
cat brew/brew_install | xargs -n1 brew install
cat brew/cask_install | xargs -n1 brew cask install
