#!/bin/bash

# Directories
echo "Creating directories."
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.config/lemonbar

# Links
echo "Soft linking configuration files."
ln -sf $PWD/.Xresources $HOME/.Xresources
ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/i3/config $HOME/.config/i3/config
ln -sf $PWD/lemonbar/bar.sh $HOME/.config/lemonbar/bar.sh
ln -sf $PWD/rofi/config $HOME/.config/rofi/config
sudo ln -sf $PWD/rofi/hovercastle.theme /usr/share/rofi/themes/hovercastle.theme

# Reload zsh
echo "Reloading zsh."
source $HOME/.zshrc
