#!/bin/bash

# Link fish config
if [ ! -f "$HOME/.config/fish/config.fish" ]; then
  echo "Linking fish config to $HOME/.config/fish/config.fish..."
  mkdir -p $HOME/.config/fish
  ln -sf $PWD/fish/config.fish $HOME/.config/fish/config.fish
else
  echo "Fish config already linked."
fi

# Link fish aliases
if [ ! -f "$HOME/.config/fish/aliases/main.fish" ]; then
  echo "Linking fish aliases to $HOME/.config/fish/aliases/main.fish..."
  mkdir -p $HOME/.config/fish/aliases
  ln -sf $PWD/fish/aliases/main.fish $HOME/.config/fish/aliases/main.fish
else
  echo "Fish aliases already linked."
fi