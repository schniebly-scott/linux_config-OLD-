#!/bin/bash

NO_MUSIC=""
PLAYER="playerctld"
FORMAT="{{ title }} - {{ artist }}"

PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    STATUS="$NO_MUSIC"
fi

if [ "$1" == "--status" ]; then
    echo "$STATUS"
else
    if [ "$STATUS" = "Stopped" ]; then
        echo "$NO_MUSIC"
    elif [ "$STATUS" = "Paused"  ]; then
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    elif [ "$STATUS" = "$NO_MUSIC"  ]; then
        echo "$STATUS"
    else
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    fi
fi

