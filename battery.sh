#!/bin/bash

power=$(acpi -ab)
if echo ${power} | grep -q "on-line"; then
       	emoji="🔌"
else
	emoji='🔋'
fi

if [[ $power =~ [0-9]{2,}% ]]; then
       	echo "${emoji}${BASH_REMATCH[0]}"
fi
