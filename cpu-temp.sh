#!/bin/bash

temp=$(sensors | grep -E "Package id 0:" | grep -oP '(?<=  )[^ ][0-9]+.{4}')
echo 🌡️$temp
