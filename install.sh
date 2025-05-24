#!/bin/bash

# Link .bash_aliases
if [ ! -f "$HOME/.bash_aliases" ]; then
  echo "Linking .bash_aliases to $HOME/.bash_aliases..."
  ln -sf $PWD/.bash_aliases $HOME/.bash_aliases
else
  echo "Bash aliases already linked."
fi

# Link fish config
if [ ! -f "$HOME/.config/fish/config.fish" ]; then
  echo "Linking fish config to $HOME/.config/fish/config.fish..."
  mkdir -p $HOME/.config/fish
  ln -sf $PWD/fish/config.fish $HOME/.config/fish/config.fish
else
  echo "Fish config already linked."
fi