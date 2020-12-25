#!/bin/env bash
url=$(dmenu -p "url: " <&-)
if [ "$url" == $url ]; then
brave $url
fi
