function reload
    echo "Reloading fish config..."
    source $HOME/.config/fish/config.fish
end

function lightsoff
    brightnessctl -d dell::kbd_backlight set 0
    brightnessctl -d phy0-led set 0
    brightnessctl -d platform::micmute set 0
    brightnessctl -d intel_backlight set 0
end

function music
    cd /opt/jellyfin/media/music

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
    cd /opt/jellyfin/media/youtube

    yt-dlp \
        -f bestvideo+bestaudio \
        --embed-thumbnail \
        --embed-metadata \
        --merge-output-format mp4 \
        $argv

    cd -
end
