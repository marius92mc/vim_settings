#!/bin/bash
#
# Run
#     $ ./brightness <value>
# where <value> could be a value between 0..1, 
# 1 representing 100%, and even bigger than 1.
# 
#
xrandr --output HDMI1 --brightness $1
