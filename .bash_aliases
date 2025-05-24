# Bash
alias reload="source $HOME/.bashrc"

# Laptop-specific:
alias lightsoff="brightnessctl -d dell::kbd_backlight set 0 && brightnessctl -d phy0-led set 0 && brightnessctl -d platform::micmute set 0 && brightnessctl -d intel_backlight set 0"
alias brightness="brightnessctl -d intel_backlight set"