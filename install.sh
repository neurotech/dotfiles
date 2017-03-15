#!/bin/sh

# super
sudo -v

# Link repo files to ~
echo "Linking config files to $HOME"
ln -sf $PWD/.tmux.conf $HOME/.tmux.conf

# Reload zsh
echo "Refreshing zsh"
source ~/.zshrc
