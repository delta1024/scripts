#!/bin/env bash
displayOne=$(xrandr | grep " connected" | cut -d" " -f1 | sed -n '1p')
pen=$(xsetwacom --list | grep stylus | cut --output-delimiter="id: " -f2 | cut -d" " -f2)
if [ $1 == right ]; then
xsetwacom set "${pen}" MapToOutput ${displayOne}
fi

if [ $1 == next ]; then
 xsetwacom set "${pen}" MapToOutput next
fi

if [ $1 == both ]; then
 xsetwacom set "${pen}" MapToOutput desktop
fi
