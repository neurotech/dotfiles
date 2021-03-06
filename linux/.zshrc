export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/bin:$HOME/.pyenv/bin:/usr/local/bin:$PATH
export NODE_ENV="development"
ZSH_THEME="hovercastle"

plugins=(git node npm zsh-syntax-highlighting)

# general
alias ls='ls -Gph'
alias grep='grep --color=auto'
alias reload='source ~/.zshrc'
alias cd..='cd ..'

# apt
alias agu='sudo apt-get update && sudo apt-get upgrade'

# x
alias relx='xrdb -merge $HOME/.Xresources && echo "Reloaded .Xresources!"'

# npm
alias check="npm-check"

# redis
alias rs="redis-server"

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nougat
export NOUGAT_SCREENSHOT_DIRECTORY="$HOME/screenshots"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
