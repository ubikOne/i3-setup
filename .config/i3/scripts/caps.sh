#!/bin/bash

caps=`xset -q | grep Caps | awk '{ print $4 }'`
#echo "C" `xset -q | grep Caps | awk '{ print $4 }'`

if [ $caps == 'off' ]; then
  echo "c"
else
  echo "C"
fi
