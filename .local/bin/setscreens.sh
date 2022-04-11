#!/bin/sh

if xrandr | grep 'HDMI-1 connected'; then
	if xrandr | grep 'VGA-1 connected'; then
		xrandr --output LVDS-1 --off
		xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
		xrandr --output DP-1 --off
		xrandr --output VGA-1 --mode 1440x900 --pos 1920x180 --rotate normal
		xrandr --output HDMI-2 --off
		xrandr --output HDMI-3 --off
		xrandr --output DP-2 --off
		xrandr --output DP-3 --off
else
	xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal
	xrandr --output VGA-1 --off
	xrandr --output HDMI-1 --off
	xrandr --output DP-1 --off
	xrandr --output HDMI-2 --off
	xrandr --output HDMI-3 --off
	xrandr --output DP-2 --off
	xrandr --output DP-3 --off
fi
