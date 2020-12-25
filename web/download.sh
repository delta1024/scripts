#!/bin/env bash
options="video\nmusic"
args=$(echo -e ${options} | sort)
prompt=$(echo -e "${args[@]}" | dmenu -i -p 'File:')

if [ "$prompt" == 'video'  ]; then
	cd $HOME/Videos/
	url=$(xclip -o)
	youtube-dl $url
fi

if [ "$prompt" == 'music' ]; then
	cd $HOME/Music/
	url=$(xclip -o)
	youtube-dl -x $url
fi
