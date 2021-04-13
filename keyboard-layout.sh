#!/bin/bash

setxkbmap -query | grep -q us && echo ⌨️ US || echo ⌨️ ES
