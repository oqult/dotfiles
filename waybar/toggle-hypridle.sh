#!/bin/bash

if pgrep -x "hypridle" > /dev/null; then
	pkill -x hypridle
	notify-send "Hypridle stopped"
else
	hypridle &
	notify-send "Hypridle started"
fi
