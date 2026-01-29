function reload
    echo "Reloading fish config..."
    source $HOME/.config/fish/config.fish
end

function su
   command su --shell=/usr/bin/fish $argv
end

function music
    mkdir -p ~/share/music
    cd ~/share/music

    yt-dlp \
        --windows-filenames \
        -x \
        --audio-format mp3 \
        --audio-quality 0 \
        --embed-metadata \
        --embed-thumbnail \
        --convert-thumbnails png \
        --exec-before-download "ffmpeg -i %(thumbnails.-1.filepath)q -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\" _%(thumbnails.-1.filepath)q" \
        --exec-before-download "rm %(thumbnails.-1.filepath)q" \
        --exec-before-download "mv _%(thumbnails.-1.filepath)q %(thumbnails.-1.filepath)q" \
        $argv

    cd -
end

function video
    mkdir -p ~/share/video
    cd ~/share/video

    yt-dlp \
        -f bestvideo+bestaudio \
        --embed-thumbnail \
        --embed-metadata \
        --merge-output-format mp4 \
        $argv

    cd -
end

function theme
    switch "$argv[1]"
        case amber emerald pink
            set -Ux FISH_PROMPT_THEME $argv[1]
        case default
            set -e FISH_PROMPT_THEME
        case ''
            if set -q FISH_PROMPT_THEME
                echo "Current: $FISH_PROMPT_THEME"
            else
                echo "Current: default"
            end
            echo "Available: amber, emerald, pink, default"
        case '*'
            echo "Unknown theme: $argv[1]"
            echo "Available: amber, emerald, pink, default"
            return 1
    end
end

function fish_prompt
    set -l path_colour "00D492"
    set -l emoji "🏯"

    switch "$FISH_PROMPT_THEME"
        case amber
            set path_colour "fbbf24"
            set emoji "🏰"
        case emerald
            set path_colour "34d399"
            set emoji "💽"
        case pink
            set path_colour "f472b6"
            set emoji "🌸"
    end

    printf '%s%s%s%s%s%s %s %s%s%s%s%s%s %s \n> ' \
        (set_color 7C86FF) $USER (set_color C6D2FF) "@" (set_color A3B3FF) (prompt_hostname) \
        $emoji \
        (set_color 44403B) "[" (set_color $path_colour) (string replace $HOME '~' $PWD) (set_color 44403B) "]" \
        (set_color normal)
end
