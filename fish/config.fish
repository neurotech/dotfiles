# Disable the fish greeting message
set fish_greeting ""

# Setup brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Clear line on Ctrl+c
bind --preset \cC cancel-commandline

# ls → eza
if type -q eza
    abbr --add -g ls 'eza --long --classify --all --header --git --no-user --tree --level 1'
end

# cat → bat
if type -q bat
    abbr --add -g cat bat
end

function reload
    source $HOME/.config/fish/config.fish
end

function lightsoff
    brightnessctl -d dell::kbd_backlight set 0
    brightnessctl -d phy0-led set 0
    brightnessctl -d platform::micmute set 0
    brightnessctl -d intel_backlight set 0
end

function brightness
    brightnessctl -d intel_backlight set $argv
end
