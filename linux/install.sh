#!/bin/bash

# Directories
echo "Creating directories."
mkdir -p $HOME/.config/i3

# Links
echo "Soft linking configuration files."
ln -sf $PWD/.Xresources $HOME/.Xresources
ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/i3/config $HOME/.config/i3/config
ln -sf $PWD/rofi/config $HOME/.config/rofi/config
ln -sf $PWD/rofi/hovercastle.theme /usr/share/rofi/themes/hovercastle.theme

# Reload zsh
echo "Reloading zsh."
source $HOME/.zshrc
