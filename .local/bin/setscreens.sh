#!/bin/sh
# ========================
# =====    ===============
# ======  ================
# ======  ================
# ======  ====   ====   ==
# ======  ===     ==  =  =
# ======  ===  =  ==     =
# =  ===  ===  =  ==  ====
# =  ===  ===  =  ==  =  =
# ==     =====   ====   ==
# ========================
#
# SPDX-License-Identifier: BSD-3-Clause
#
# Copyright (c) 2022 Joe
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. Neither the name of the organization nor the
#    names of its contributors may be used to endorse or promote products
#    derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY JOE ''AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL JOE BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# setscreens.sh
# Mon Apr 11 19:57:45 CEST 2022
# Joe
#
# Script to set screens, loaded at startx only.

if xrandr | grep 'HDMI-1 connected' && xrandr | grep 'VGA-1 connected'; then
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
