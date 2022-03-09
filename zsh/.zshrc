ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  autojump
  kubectl
  kube-ps1
)
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
source $ZSH/oh-my-zsh.sh

alias hist='history | grep'
alias gdc='git diff --cached'
alias be='bundle exec'
alias hs='bundle exec hanami server'
alias hc='bundle exec hanami console'
alias uuid="uuidgen | tr -d - | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"

export EDITOR=vim
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:~/.npm/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin:$GOROOT/bin
export GO111MODULE=on

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
function npm-do { (PATH=$(npm bin):$PATH; eval $@;) }

# export GPG_TTY="$(tty)"
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpg-connect-agent updatestartuptty /bye
# gpgconf --launch gpg-agent
