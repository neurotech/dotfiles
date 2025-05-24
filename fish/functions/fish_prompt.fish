function fish_prompt
    set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|")

    printf '[%s] %s%s@%s %s%s %s%s%s \n> ' (date "+%H:%M:%S") (set_color 4F39F6) \
        $USER (prompt_hostname) (set_color FFD230) $PWD $pipestatus_string \
        (set_color normal)
end
