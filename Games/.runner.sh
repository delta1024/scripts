#!/bin/sh
ls ./ | dmenu -l 10 | awk '{print $1}' | xargs zsh  
