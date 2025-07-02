alias ls="eza --long --classify --all --header --git --tree --group --level 1"
alias cat="bat"
alias brightness="brightnessctl -d intel_backlight set"
alias dotfiles="cd $HOME/dotfiles/ && git pull && ./install.sh && reload && cd -"

# homebrew
alias bu="brew update && brew upgrade"

# tmux
alias tn="tmux new-session -s"
alias tl="tmux list-sessions"
alias ta="tmux attach-session"
