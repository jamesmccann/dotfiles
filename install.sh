#!/bin/sh

# install homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install packages via homebrew and homebrew-cask
cat brew/brew_install | xargs -n1 /opt/homebrew/bin/brew install
cat brew/cask_install | xargs -n1 /opt/homebrew/bin/brew install

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# symlinks
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/.gitignore ~/.gitignore
ln -sf ~/dotfiles/vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# set fast key refresh
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# uncomment to remap ~,§ on international keyboard
# cp ./international-keyboard-remap.plist /Library/LaunchDaemons/org.custom.keyboard-remap.plist
# sudo launchctl load -w /Library/LaunchDaemons/org.custom.keyboard-remap.plist

# kill desktop icons
defaults write com.apple.finder CreateDesktop false
killall Finder
