#!/bin/bash

if pgrep -x "polybar" > /dev/null; then
    pkill polybar
else
    polybar bar1 &
fi

