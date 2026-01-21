#!/bin/bash

echo "Installing dotfiles..."

if ! command -v stow &> /dev/null; then
  echo "GNU Stow is not installed. Please install it and then re-run this script."
  exit 1
fi

for dir in */; do
  stow "${dir%/}"
done

echo "Dotfiles installed successfully."
