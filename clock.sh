#!/bin/bash

clocks=(🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 🕛) 

date=$(date +"%I:%M")
hour=$(date +"%I")
emoji=${clocks[(10#${hour}) - 1]}

echo ${emoji} ${date}
