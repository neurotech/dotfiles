if status is-interactive
  # Commands to run in interactive sessions can go here
end

# Disable the fish greeting message
set -U fish_greeting

# Functions
if [ -f $HOME/.config/fish/functions/main.fish ]
    source $HOME/.config/fish/functions/main.fish
end

# Aliases
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end

fzf --fish | source

pokeget kanto --hide-name
