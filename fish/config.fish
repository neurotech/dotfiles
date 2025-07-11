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

# cargo
set -gx CARGO_HOME $HOME/.cargo/bin
if not string match -q -- $CARGO_HOME $PATH
    set -gx PATH $PATH $CARGO_HOME
end

# pnpm
set -gx PNPM_HOME $HOME/.local/share/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH $PATH $PNPM_HOME
end

export MUSIC_SHARE_PATH="$HOME/share/music"
export VIDEO_SHARE_PATH="$HOME/share/video"

clear && pokeget random --hide-name >/tmp/pkmn.txt && fastfetch -c $HOME/.config/fastfetch/config.jsonc && printf '\n'
