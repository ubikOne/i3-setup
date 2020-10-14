#!/bin/bash

count=$(yay -Qu | wc -l)

if [ $count == 0 ]; then
    echo ""
else
    echo ""
fi
