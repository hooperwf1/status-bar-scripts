#!/bin/sh

if [ $1 == 0 ]; then
    pactl set-sink-mute 0 toggle
else 
    pactl set-sink-mute 0 false;
    pactl set-sink-volume 0 $1%;
fi


pkill -RTMIN+6 dwmblocks
