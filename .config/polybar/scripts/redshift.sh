#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

pgrep -x redshift > /dev/null

# if redshift is running
if [[ $? -eq 0 ]]; then
    echo "%{F#D08770}$icon"
else
    echo $icon
fi
