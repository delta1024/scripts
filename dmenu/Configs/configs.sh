#!/bin/env bash
dir="$HOME/.scripts/dmenu/Configs/links/"
args=$(cd ${dir} && ls | sort)
prompt=$(echo -e "${args[@]}" | dmenu -i -p 'Config:')

if [ "$prompt" == $prompt ]; then
	exec emacsclient -c ${dir}${prompt}
fi
