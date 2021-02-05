#!/bin/env bash
url=$(dmenu -p "url: " <&-)
if [ "$url" == $url ]; then
librewolf --new-window $url
fi
