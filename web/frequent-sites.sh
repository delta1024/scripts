#!/bin/env bash
args="Youtube
Gmail
ArchWiki
Youtube Music"
prompt=$(echo -e "${args[@]}" | dmenu -i -p 'Site: ')

if [ "$prompt" == 'Youtube' ]; then
	exec brave youtube.com
fi

if [ "$prompt" == 'Gmail' ]; then
	exec brave mail.google.com
fi

if [ "$prompt" == 'ArchWiki' ]; then
	exec brave wiki.archlinux.org
fi

if [ "$prompt" == 'Youtube Music' ]; then
brave music.youtube.com
fi
