#!/bin/env bash
if [[ $1 == "draw" ]]; then
    cd /home/jake/Pictures/Wallpapers
    leftDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
    leftImage=$(< .background)
    xwallpaper --output ${leftDisplay} --stretch ${leftImage} 
fi

if [[ $1 == "set" ]]; then
    cd $HOME/Pictures/Wallpapers
    sxiv -rqot * > .background
    $HOME/.scripts/wallpaper.sh draw
fi
