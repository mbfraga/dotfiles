#!/bin/bash

TITLE="i3 audio"
MSG="h,< - Prev\nl,> - Next\nj - Volume up\nk - Volume down\nm - Mute\nn - Now Playing\np - Play/Pause\ns - Stop"

notify-send -t 2 "$TITLE" "$MSG"
