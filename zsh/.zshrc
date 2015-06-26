ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl='nocorrect subl '
alias cap='nocorrect cap '
alias gradle='nocorrect gradle'
alias hist='history | grep'
alias gdc='git diff --cached'

plugins=(git rails autojump)
source $ZSH/oh-my-zsh.sh

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export PATH=/usr/local/bin:/usr/local/sbin:~/.npm/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
