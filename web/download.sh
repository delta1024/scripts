#!/bin/env bash
options="video\nmusic"
args=$(echo -e ${options} | sort)
prompt=$(echo -e "${args[@]}" | dmenu -i -p 'File:')
case "$prompt" in
    video)
        cd $HOME/Videos/
	    url=$(xclip -o)
	    youtube-dl $url
;;
    music)
     cd $HOME/Music/
	 url=$(xclip -o)
	 youtube-dl -x $url
;;
esac
