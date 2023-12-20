#!/bin/bash
#set HDMI1 modeline to match Laptop Screen to allow mirrored screens (1 screen with active hdmi audio)
#Create HDMI modeline for 1600x900 resolution (output from $cvt 1600 900 60)
xrandr --newmode "1600x900_60.00" 118.25 1600 1696 1856 2112 900 903 908 934 -hsync +vsync

#Make modeline available for HDMI
xrandr --addmode HDMI-1 1600x900_60.00

#Select new modeline for HDMI
xrandr --output HDMI-1 --mode 1600x900_60.00

#Mirror screens (now we can because both have same resolution)
xrandr --output HDMI-1 --same-as eDP-1


