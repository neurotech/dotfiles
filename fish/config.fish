if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

set brewcmd (path filter /opt/homebrew/bin/brew /usr/local/bin/brew)[1]
and $brewcmd shellenv | source