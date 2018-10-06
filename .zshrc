# .zshrc

EDITOR="/usr/local/bin/nvim"
alias vim="nvim"
alias bt='bitcoin-cli -datadir=/Users/$(whoami)/bitcoin/.bitcoin'

# Helpful aliases
alias ..="cd .."
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias graphicsmagick="/usr/local/bin/gm" # 'gm' is aliased to 'git merge'
alias ni="node inspect"

# Functions
function ae() {
  # Activate a virtualenv existing in './env'
  if [ "$1" != "" ]; then dir="$1"; else dir="."; fi
  source "$dir"/env/bin/activate
}

# Ruby development
eval "$(rbenv init -)"

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# node
export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"

export PATH=$HOME/scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/sweetman/.oh-my-zsh

# zsh settings

ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

plugins=(git z ruby docker docker-compose tmux vi-mode ssh-agent)

zstyle :omz:plugins:ssh-agent identities id_rsa sbv5

ZSH_TMUX_AUTOCONNECT=false

source $ZSH/oh-my-zsh.sh
