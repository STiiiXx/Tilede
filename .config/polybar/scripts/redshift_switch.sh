#!/bin/bash

icon="switch"

pgrep -x redshift > /dev/null

if [ $? -eq 0 ]; then
    killall -q redshift > /dev/null
    ~/.config/polybar/scripts/redshift.sh
    #notify-send redshift deactivated
else
    exec redshift -l 51:9 -r&
    ~/.config/polybar/scripts/redshift.sh
    #notify-send redshift activated
fi
