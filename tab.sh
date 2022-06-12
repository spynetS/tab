#!/bin/sh

config=~/.config/tab.config

if test -f "$config"; then
    . "$config"
else
    echo terminal=kitty>"$config"
    . "$config"
fi


place = pwd
exec "$terminal" $place

