export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export NODE_ENV="development"
ZSH_THEME="hovercastle"

plugins=(git node npm zsh-syntax-highlighting)

# general
alias ls='ls -Gph'
alias grep='grep --color=auto'
alias reload='source ~/.zshrc'
alias cd..='cd ..'

# npm
alias check="npm-check"

source $ZSH/oh-my-zsh.sh
