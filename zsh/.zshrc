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

# Quickly map/unmap § to ~ and ~ to left-shift
function tildemap () {
  # TODO: this is naive and assumes we only use this one mapping
  if [[ "$(hidutil property --get 'UserKeyMapping' | tr -d '\n')" == "()" ]] then
    hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingDst":30064771297,"HIDKeyboardModifierMappingSrc":30064771125},{"HIDKeyboardModifierMappingDst":30064771125,"HIDKeyboardModifierMappingSrc":30064771172}]}' > /dev/null
  else
    hidutil property --set '{"UserKeyMapping":[]}' > /dev/null
  fi
}

alias hist='history | grep'
alias gdc='git diff --cached'
alias be='bundle exec'
alias hs='bundle exec hanami server'
alias hc='bundle exec hanami console'
alias uuid="uuidgen | tr -d - | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"
alias jwtd="jq -R 'split(\".\") | .[1] | @base64d | fromjson'"

export EDITOR=vim

export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/opt/homebrew/opt/golang/libexec/bin
export PATH=$PATH:$HOME/Library/Python/3.8/bin
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH=$PATH:/Library/Developer/CommandLineTools/usr/bin
export GO111MODULE=on

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
function npm-do { (PATH=$(npm bin):$PATH; eval $@;) }

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye
gpgconf --launch gpg-agent
