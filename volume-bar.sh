#!/bin/bash

raw=$(pactl get-sink-mute 0)
if [[ $raw =~ "no" ]]; then
    emoji=🔊
else
    emoji=🔇
fi

raw=$(pactl get-sink-volume 0)
reg="([0-9]+)%"

if [[ $raw =~ $reg ]]; then
    echo ${emoji} ${BASH_REMATCH[1]}%
fi
