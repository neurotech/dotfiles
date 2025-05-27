function music
    cd /opt/jellyfin/media/youtube

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
