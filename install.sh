#!/bin/bash

# Link .bash_aliases
if [ ! -f "$HOME/.bash_aliases" ]; then
  echo "Linking .bash_aliases to $HOME/.bash_aliases..."
  ln -sf $PWD/.bash_aliases $HOME/.bash_aliases
else
  echo "Bash aliases already linked."
fi

# Link Starship config
if [ ! -f "$HOME/.config/starship.toml" ]; then
  echo "Linking Starship config to $HOME/.config/starship.toml..."
  mkdir -p $HOME/.config
  ln -sf $PWD/starship/starship.toml $HOME/.config/starship.toml
else
  echo "Starship config already linked."
fi