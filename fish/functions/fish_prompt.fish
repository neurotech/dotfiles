function fish_prompt
    printf '[%s] %s%s@%s %s%s %s%s%s \n> ' (date "+%H:%M:%S") (set_color 4F39F6) \
        $USER (prompt_hostname) (set_color FFD230) $PWD \
        (set_color normal)
end
