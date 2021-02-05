#!/bin/env bash
query=$(dmenu -p "Google Search: " <&-)
query=${query// /%20}
if [ "$query" == $query ]; then
librewolf --new-window "http://www.google.com/search?q=${query}"
fi
