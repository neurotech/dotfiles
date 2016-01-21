# zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="eternal"
plugins=(git node zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# shell
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
export EDITOR="vim"

# aliases
## shell
alias ls='ls -Gph'
alias grep='grep --color=auto'
alias m='git add .;git commit -m'
alias c='clear'
alias s='sudo'
alias reload='source ~/.zshrc'
alias cd..='cd ..'

## aptitude
alias agu='sudo apt-get update && sudo apt-get upgrade'