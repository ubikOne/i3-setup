#!/bin/bash

caps=`xset -q | grep Num | awk '{ print $8 }'`

if [ $caps == 'off' ]; then
  echo "n"
else
  echo "N"
fi
