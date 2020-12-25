#!/bin/env bash
args="Youtube\nArchWiki\nProton DB"
argsNum=$(echo -e "${args[@]}" | wc -l)
prompt=$(echo -e "${args[@]}" | dmenu -l "$argsNum" -i -p 'Site to search: ')

if [ "$prompt" == 'Youtube' ]; then
    query=$(dmenu -p "Youtube Search: " <&-)
    query=${query// /%20}
    if [ "$query" == $query ]; then
    brave "youtube.com/results?search_query=${query}"
    fi
fi

if [ "$prompt" == 'ArchWiki' ]; then
    query=$(dmenu -p "ArchWiki: " <&-)
    query=${query// /_}
    if [ "$query" == $query ]; then
    brave "https://wiki.archlinux.org/index.php/Special:Search/${query}"
    fi
fi

if [ "$prompt" == 'Proton DB' ]; then
  query=$(dmenu -p "Proton DB: " <&-)
  query=${query// /%20}
  if [ "$query" == $query ]; then
  brave "https://www.protondb.com/search?q=${query}"
  fi
fi
