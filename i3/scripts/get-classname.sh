#!/bin/sh
xprop | grep WM_CLASS | awk '{ print $4 }' | xclip
