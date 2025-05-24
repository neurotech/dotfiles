function fish_prompt
    printf '%s%s%s%s%s%s %s %s%s%s%s%s%s %s \n> ' \
        (set_color 7C86FF) $USER (set_color A3B3FF) "@" (set_color 7C86FF) (prompt_hostname) \
        "💽" \
        (set_color FEF3C6) "[" (set_color FFD230) (string replace $HOME '~' $PWD) (set_color FEF3C6) "]" \
        (set_color normal)
end
