#!/bin/env bash
if [[ $1 == "draw" ]]; then
cd /home/jake/Pictures/Wallpapers
leftDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
rightDisplay=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '2p')
leftImage=$(cat .background | sed -n '1p')
rightImage=$(cat .background | sed -n '2p')
xwallpaper --output ${leftDisplay} --stretch ${leftImage} --output ${rightDisplay} --stretch ${rightImage}
fi

if [[ $1 == "set" ]]; then
cd $HOME/Pictures/Wallpapers
sxiv -rqot * > TEMP
   if [ "$(wc -l < TEMP)" == 0 ]; then
   rm $HOME/Pictures/Wallpapers/TEMP
   fi
   if [ "$(wc -l < TEMP)" == 1 ]; then
    sxiv -rqot * >> TEMP
    mv TEMP .background
    $HOME/.scripts/wallpaper.sh draw
   fi
   if [ "$(wc -l < TEMP)" == 2 ]; then
      mv TEMP .background
      $HOME/.scripts/wallpaper.sh draw
   fi

fi
