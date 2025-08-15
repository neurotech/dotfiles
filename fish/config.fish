# Disable the fish greeting message
set -U fish_greeting

# Setup Homebrew
eval $(brew shellenv)

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
set -gx CARGO_HOME1 $HOME/.cargo/bin
if not string match -q -- $CARGO_HOME1 $PATH
    set -gx PATH $PATH $CARGO_HOME1
end

set -gx CARGO_HOME2 $HOME/.cargo/bin/bin
if not string match -q -- $CARGO_HOME2 $PATH
    set -gx PATH $PATH $CARGO_HOME2
end

# rustup
set -gx RUSTUP_HOME $(brew --prefix rustup)/bin
if not string match -q -- $RUSTUP_HOME $PATH
    set -gx PATH $PATH $RUSTUP_HOME
end

# pnpm
set -gx PNPM_HOME $HOME/.local/share/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH $PATH $PNPM_HOME
end

# go
set -gx GO_HOME $HOME/go/bin
if not string match -q -- $GO_HOME $PATH
    set -gx PATH $PATH $GO_HOME
end

export MUSIC_SHARE_PATH="$HOME/share/music"
export VIDEO_SHARE_PATH="$HOME/share/video"

clear && pokeget random --hide-name >/tmp/pkmn.txt && fastfetch -c $HOME/.config/fastfetch/config.jsonc && printf '\n'
