#!/bin/bash

count=$(yay -Qu | wc -l)

if [ $count == 0 ]; then
    echo ""
else
    echo ""
    notify-send -a "update" "
    there is $count updates
    "
fi
