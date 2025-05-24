#!/bin/bash

# Link .bash_aliases
if [ ! -f "$HOME/.bash_aliases" ]; then
    ln -sf $PWD/.bash_aliases $HOME/.bash_aliases
fi

# Link Starship config
if [ ! -f "$HOME/.config/starship.toml" ]; then
    mkdir -p $HOME/.config
    ln -sf $PWD/starship/starship.toml $HOME/.config/starship.toml
fi