#!/bin/sh

# Link it up
echo "Soft linking configuration files to $HOME"
ln -sf $PWD/.tmux.conf $HOME/.tmux.conf
ln -sf $PWD/.zshrc $HOME/.zshrc

# Reload zsh
echo "Refreshing zsh"
source $HOME/.zshrc
