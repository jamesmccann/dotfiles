# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

function git_commit_to_branch() {
}

function git_checkout_and_merge() {
  current_branch = `git rev-parse --abbrev-ref HEAD`
}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias 3m="cd ~/3months"
alias movsim="cd ~/SWEN489/movsim"
alias report="cd /Users/james/Dropbox/ENGR489/FinalReport/report"
alias subl='nocorrect subl ' 
alias cap='nocorrect cap '
alias hist='history | grep' 
alias gradle='nocorrect gradle'

alias ndk-build="~/development/android-ndk-r9c/ndk-build"
alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'

alias gdc='git diff --cached'
alias gcb='git_commit_to_branch'

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails autojump)
source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Customize to your needs...
PATH=$PATH:/$HOME/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME=~/development/adt-bundle-mac-x86_64-20131030/sdk/
export ANDROID_NDK_HOME=~/development/android-ndk-r9c/

__rvm_project_rvmrc


