#!/bin/bash

setxkbmap -query | grep -q us && setxkbmap es || setxkbmap us
pkill -RTMIN+5 dwmblocks
