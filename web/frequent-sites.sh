#!/bin/env bash
args="Youtube
Just Cause 3
ArchWiki
Youtube Music"
prompt=$(echo -e "${args[@]}" | dmenu -i -p 'Site: ')

case $prompt in
    Youtube)
        url=youtube.com
        ;;
    'Just Cause 3')
        url=https://www.youtube.com/playlist?list=PL4Sz7_l-PtwBmvH_QivBJs3eD21Zqj6Lv
        ;;
    ArchWiki)
        url=wiki.archlinux.org
        ;;
    'Youtube Music')
        url=music.youtube.com
        ;;
esac
if [ "$url" == $url ]; then
   librewolf --new-window "$url"
fi
