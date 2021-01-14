#!/bin/env bash
args="Groff Folder\nWritting Folder"
argsNum=$(echo -e "${args[@]}" | wc -l)
prompt=$(echo -e "${args[@]}" | dmenu -l "$argsNum" -i -p 'Where to?')
case $prompt in
    "Groff Folder") alacritty -e lf $HOME/Documents/groff ;;
    "Writting Folder") alacritty -e lf $HOME/Documents/Writing ;;
esac
