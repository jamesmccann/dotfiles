ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Example aliases
alias subl='nocorrect subl '
alias cap='nocorrect cap '
alias gradle='nocorrect gradle'
alias hist='history | grep'
alias gdc='git diff --cached'
alias be='bundle exec'
alias t15='termdown 15m -s --no-figlet && afplay /System/Library/Sounds/Glass.aiff'
alias hs='bundle exec hanami server'
alias hc='bundle exec hanami console'

plugins=(git rails autojump)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export PATH=/usr/local/bin:/usr/local/sbin:~/.npm/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function npm-do { (PATH=$(npm bin):$PATH; eval $@;) }

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export GO111MODULE=on
