# Disable the fish greeting message
set -U fish_greeting

# Setup brew
brew shellenv

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

# fzf
fzf --fish | source

set -gx PATH $HOME/.cargo/bin $PATH

# pnpm
set -gx PNPM_HOME $HOME/.local/share/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH $PNPM_HOME $PATH
end

export MUSIC_SHARE_PATH="$HOME/share/music"
export VIDEO_SHARE_PATH="$HOME/share/video"

clear && pokeget random --hide-name >/tmp/pkmn.txt && fastfetch -c $HOME/.config/fastfetch/config.jsonc && printf '\n'
