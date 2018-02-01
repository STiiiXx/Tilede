#!/bin/bash

# backup low config
cp ~/.config/i3/config ~/.config/i3/config-low

# load high-config-file
cp ~/.config/i3/config-high ~/.config/i3/config
i3-msg restart
