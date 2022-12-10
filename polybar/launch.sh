#!/bin/bash

killall -q polybar

echo "---" | tee -a /tmp/polybar.log
MONITOR="HDMI-0" polybar main 2>&1 | tee -a /tmp/polybar.log & disown
MONITOR="DVI-D-0" polybar main 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bars launched..."
