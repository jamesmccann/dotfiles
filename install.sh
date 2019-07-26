#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install brew / cask pre-reqs
brew tap caskroom/cask
brew cask install java

# install packages via homebrew and homebrew-cask
cat brew/brew_install | xargs -n1 brew install
cat brew/cask_install | xargs -n1 brew cask install

# symlinks
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/vim ~/.vim
ln -sf ~/.dotfiles/.vimrc ~/.vimrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
