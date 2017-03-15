export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# general
alias ls='ls -Gph'
alias grep='grep --color=auto'
alias reload='source ~/.zshrc'
alias cd..='cd ..'

# sublime
export EDITOR='subl -w'

# homebrew
alias bu='brew update && brew upgrade -all'

# docker
docker-stats() { docker stats $(docker ps -q); }
docker-stopall() { docker stop -t 1 $(docker ps -a -q); }
docker-killall() { docker rm -v $(docker ps -a -q) && docker rmi $(docker images -q); }
alias docker-nukeall="docker-stopall && docker-killall"
alias docker-clean-volumes="docker volume ls -q -f dangling=true | xargs docker volume rm"

# npm
alias check="npm-check"

# Environment Variables
export NODE_ENV="development"
