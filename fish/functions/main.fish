function reload
    echo "Reloading fish config..."
    source $HOME/.config/fish/config.fish
end

function lightsoff
    brightnessctl -d dell::kbd_backlight set 0
    brightnessctl -d phy0-led set 0
    brightnessctl -d platform::micmute set 0
    brightnessctl -d intel_backlight set 0
end
