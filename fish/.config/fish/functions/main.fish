function reload
    echo "Reloading fish config..."
    source $HOME/.config/fish/config.fish
end

function su
   command su --shell=/usr/bin/fish $argv
end

function fish_prompt
    printf '%s%s%s%s%s%s %s %s%s%s%s%s%s %s \n> ' \
        (set_color 7C86FF) $USER (set_color C6D2FF) "@" (set_color A3B3FF) (prompt_hostname) \
        "💽" \
        (set_color 44403B) "[" (set_color FFD230) (string replace $HOME '~' $PWD) (set_color 44403B) "]" \
        (set_color normal)
end
