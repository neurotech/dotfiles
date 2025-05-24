#!/home/linuxbrew/.linuxbrew/bin/fish

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

# Link fish functions (main)
if [ ! -f "$HOME/.config/fish/functions/main.fish" ]; then
  echo "Linking fish functions (main) to $HOME/.config/fish/functions/main.fish..."
  mkdir -p $HOME/.config/fish/functions
  ln -sf $PWD/fish/functions/main.fish $HOME/.config/fish/functions/main.fish
else
  echo "Fish functions (main) already linked."
fi

# Link fish functions (fish_prompt)
if [ ! -f "$HOME/.config/fish/functions/fish_prompt.fish" ]; then
  echo "Linking fish prompt function to $HOME/.config/fish/functions/fish_prompt.fish..."
  ln -sf $PWD/fish/functions/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
else
  echo "Fish prompt function already linked."
fi