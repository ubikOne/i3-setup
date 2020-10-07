#!/bin/bash

caps=`xset -q | grep Scroll | awk '{ print $12 }'`

if [ $caps == 'off' ]; then
  echo "s"
else
  echo "S"
fi
