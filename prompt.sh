#!/bin/env bash
# ./prompt "Do you want to shutdown?" "shutdown -h now"
[ $(echo -e "No\nYes" | dmenu -i -p "$1") \
    == "Yes" ] && $2
