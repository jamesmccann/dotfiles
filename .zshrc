# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias 3m="cd ~/3months"
alias subl='nocorrect subl '
alias cap='nocorrect cap '
alias gradle='nocorrect gradle'
alias hist='history | grep'
alias gti='git'
alias ghc="/usr/bin/open -a '/Applications/Google Chrome.app' 'http://github.com/3months/consumer'"
alias be="bundle exec "

alias ggl='git gl'
alias gcmp='gcm && ggpull'
alias gdc='git diff --cached'

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails autojump)
source $ZSH/oh-my-zsh.sh

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME=~/development/adt-bundle-mac-x86_64-20140702/sdk/
export ANDROID_NDK_HOME=~/development/android-ndk-r9c/

PLATFORM_TOOLS=$ANDROID_HOME/platform-tools/

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:~/.npm/bin:/usr/local/share/npm/bin:$PLATFORM_TOOLS:$ANDROID_NDK_HOME:/usr/bin:/bin:/usr/sbin:/sbin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
