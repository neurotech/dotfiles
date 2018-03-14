#!/bin/sh

# Directories
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.config/rofi

# Links
echo "Soft linking configuration files to $HOME"
ln -sf $PWD/.Xresources $HOME/.Xresources
ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/i3/config $HOME/.config/i3/config
ln -sf $PWD/rofi/config $HOME/.config/rofi/config
ln -sf $PWD/rofi/reddy.rasi $HOME/.config/rosi/reddy.rasi

# Reload zsh
echo "Refreshing zsh"
source $HOME/.zshrc
