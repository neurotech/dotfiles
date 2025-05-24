# Disable the fish greeting message
set fish_greeting ""

# Setup brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Clear line on Ctrl+c
bind --preset \cC cancel-commandline

# Aliases
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end

# Functions
if [ -f $HOME/.config/fish/functions/main.fish ]
    source $HOME/.config/fish/functions/main.fish
end

set PATH "$PATH:$HOME/.cargo/bin"

clear && pokeget random --hide-name >/tmp/pkmn.txt && fastfetch -c $HOME/.config/fastfetch/config.jsonc && printf '\n'
