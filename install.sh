#!/usr/bin/env fish

touch $HOME/.hushlogin

# Link fish config
if not test -f "$HOME/.config/fish/config.fish"
    echo "Linking fish config to $HOME/.config/fish/config.fish..."
    mkdir -p "$HOME/.config/fish"
    ln -sf "$PWD/fish/config.fish" "$HOME/.config/fish/config.fish"
else
    echo "Fish config already linked."
end

# Link fish aliases
if not test -f "$HOME/.config/fish/aliases/main.fish"
    echo "Linking fish aliases to $HOME/.config/fish/aliases/main.fish..."
    mkdir -p "$HOME/.config/fish/aliases"
    ln -sf "$PWD/fish/aliases/main.fish" "$HOME/.config/fish/aliases/main.fish"
else
    echo "Fish aliases already linked."
end

# Link fish functions (main)
if not test -f "$HOME/.config/fish/functions/main.fish"
    echo "Linking fish functions (main) to $HOME/.config/fish/functions/main.fish..."
    mkdir -p "$HOME/.config/fish/functions"
    ln -sf "$PWD/fish/functions/main.fish" "$HOME/.config/fish/functions/main.fish"
else
    echo "Fish functions (main) already linked."
end

# Link fish functions (fish_prompt)
if not test -f "$HOME/.config/fish/functions/fish_prompt.fish"
    echo "Linking fish functions (fish_prompt) to $HOME/.config/fish/functions/fish_prompt.fish..."
    mkdir -p "$HOME/.config/fish/functions"
    ln -sf "$PWD/fish/functions/fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"
else
    echo "Fish functions (fish_prompt) already linked."
end

# Link fastfetch config
if not test -f "$HOME/.config/fastfetch/config.jsonc"
    echo "Linking fastfetch config to $HOME/.config/fastfetch/config.jsonc..."
    mkdir -p "$HOME/.config/fastfetch"
    ln -sf "$PWD/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"
else
    echo "Fastfetch config already linked."
end

# Link tmux config
if not test -f "$HOME/.config/tmux/tmux.conf"
    echo "Linking tmux config to $HOME/.config/tmux/tmux.conf..."
    mkdir -p "$HOME/.config/tmux"
    ln -sf "$PWD/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
else
    echo "Tmux config already linked."
end

# Make share directories
mkdir -p $MUSIC_SHARE_PATH $VIDEO_SHARE_PATH
