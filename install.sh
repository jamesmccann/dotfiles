#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install packages via homebrew and homebrew-cask
cat brew/brew_install | xargs -n1 brew install
cat brew/cask_install | xargs -n1 brew cask install

# symlinks
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/vim/.vimrc.after ~/.vimrc.after
ln -sf ~/.dotfiles/vim/.gvimrc.after ~/.gvimrc.after
ln -sf ~/.dotfiles/vim/plugins ~/.janus

# install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
