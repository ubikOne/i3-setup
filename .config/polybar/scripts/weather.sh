#!/bin/bash

w=`curl -s -H "Accept-Language: pl"  wttr.in/Warszawa?format="%l:+%c+%t\n"`

echo $w
