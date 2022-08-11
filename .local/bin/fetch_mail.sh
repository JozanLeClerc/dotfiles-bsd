#!/bin/sh

export DISPLAY=unix:0.0
export GNUPGHOME=/home/jozan/.local/share/gnupg
export PASSWORD_STORE_DIR=/home/jozan/.local/share/pass 

killall mbsync >/dev/null 2>&1
notify-send -u low -t 1750 'mbsync' '  fetching mail...'
mbsync -a -c /usr/home/jozan/.config/mbsync/mbsyncrc || notify-send -u low -t 1750 'mbsync' '  failed to fetch mail'

