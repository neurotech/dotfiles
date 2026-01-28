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

function fish_prompt
    printf '%s%s%s%s%s%s %s %s%s%s%s%s%s %s \n> ' \
        (set_color 7C86FF) $USER (set_color C6D2FF) "@" (set_color A3B3FF) (prompt_hostname) \
        "🏯" \
        (set_color 44403B) "[" (set_color 00D492) (string replace $HOME '~' $PWD) (set_color 44403B) "]" \
        (set_color normal)
end
