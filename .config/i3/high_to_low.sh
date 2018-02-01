#!/bin/bash

# backup old config
cp ~/.config/i3/config ~/.config/i3/config-high

# kill unnecessary processes
killall polybar

# load low-config-file
cp ~/.config/i3/config-low ~/.config/i3/config
i3-msg restart
