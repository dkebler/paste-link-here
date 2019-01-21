#!/bin/bash
# uncomment next two lines for debugging log file
# LINK_DIR=$(dirname "$1")
# exec 1> "$LINK_DIR"/link.log 2>&1
echo The Link Path- $1 - was sent to clipboard
echo "$1" | /usr/bin/xclip -se c
