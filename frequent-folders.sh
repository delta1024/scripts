#!/bin/env bash
args="BLUEPRINT\nsrc\nconfig\nscripts"
argsNum=$(echo -e "${args[@]}" | wc -l)
prompt=$(echo -e "${args[@]}" | dmenu -l "$argsNum" -i -p 'Where to?')
case $prompt in
    "src") alacritty -e lf $HOME/.src ;;
    "BLUEPRINT") alacritty -e lf $HOME/Documents/Writing/Archive\ of\ Solaris/BLUEPRINT ;;
    "config") alacritty -e lf $HOME/.config;;
    "scripts") alacritty -e lf $HOME/.scripts;;
esac
