#!/bin/sh

config=~/.config/tab.config

if test -f "$config"; then
    . "$config"
else
    echo set your default terminal in the tab.config file in .config folder
    echo terminal=kitty>"$config"
    . "$config"
fi

place=pwd
exec "$terminal" $place &

