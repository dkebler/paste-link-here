#!/bin/bash
exec 1> "$1"/link.log 2>&1
LINK_PATH=$(/usr/bin/xclip -o -se c)
LINK_NAME="$(basename "${LINK_PATH}")"
echo Link Path="$LINK_PATH", Link Name="$LINK_NAME", Link Destination "$1/$LINK_NAME"
ln -s "$LINK_PATH" "$1"/"$LINK_NAME"
xdotool key ctrl+r
