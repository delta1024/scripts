#!/bin/env bash
options="video\nNo Playlist Video\nmusic\nstream"
args=$(echo -e ${options} | sort)
prompt=$(echo -e "${args[@]}" | dmenu -i -p 'File:')
case "$prompt" in
    video)
        cd $HOME/Videos/
	    url=$(xclip -o)
	    youtube-dl $url
;;
    'No Playlist Video')
        cd $HOME/Videos/
        url=$(xclip -o)
        youtube-dl --no-playlist $url
	;;
        music)
     cd $HOME/Music/
	 url=$(xclip -o)
	 youtube-dl -x $url
;;
    'stream')
	    mpv $(xclip -o) 
;;

esac
