#!/bin/env bash
args="Youtube\nArchWiki\nProton DB"
argsNum=$(echo -e "${args[@]}" | wc -l)
prompt=$(echo -e "${args[@]}" | dmenu -l "$argsNum" -i -p 'Site to search: ')
case "$prompt" in
   Youtube)
    query=$(dmenu -p "Youtube Search: " <&-)
    query=${query// /%20}
    if [ "$query" == $query ]; then
    librewolf --new-window "youtube.com/results?search_query=${query}"
    fi
;;

   ArchWiki)
    query=$(dmenu -p "ArchWiki: " <&-)
    query=${query// /_}
    if [ "$query" == $query ]; then
    librewolf --new-window "https://wiki.archlinux.org/index.php/Special:Search/${query}"
    fi
;;

    'Proton DB')
  query=$(dmenu -p "Proton DB: " <&-)
  query=${query// /%20}
  if [ "$query" == $query ]; then
  librewolf --new-window "https://www.protondb.com/search?q=${query}"
  fi
;;
esac
