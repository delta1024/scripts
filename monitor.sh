#!/bin/env bash
# left
if [[ $1 = 'left' ]]; then
    leftDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
    rightDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '2p')
    xrandr --output ${leftDisplay} --auto --output ${rightDisplay} --off
    wallpaper.sh draw
fi
# both
if [[ $1 = 'both' ]]; then
    leftDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
    rightDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '2p')
    xrandr --output ${leftDisplay} --auto --primary --output ${rightDisplay} --auto --right-of ${leftDisplay}
    wallpaper.sh draw
fi
# right
if [[ $1 = 'right' ]]; then
    leftDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
    rightDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '2p')
    xrandr --output ${leftDisplay} --off --output ${rightDisplay} --auto
    # nitrogen --restore
    wallpaper.sh draw
fi
# For games
if [[ $1 = 'games' ]]; then
    leftDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
    rightDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '2p')
    xrandr --output ${leftDisplay} --auto --output ${rightDisplay} --off
fi

