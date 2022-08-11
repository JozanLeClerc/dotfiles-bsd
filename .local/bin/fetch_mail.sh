#!/bin/sh

export GNUPGHOME=/home/jozan/.local/share/gnupg
export PASSWORD_STORE_DIR=/home/jozan/.local/share/pass 

killall mbsync >/dev/null 2>&1
notify-send -u low -t 3000 'mbsync' '  fetching mail...'
mbsync -a -c /usr/home/jozan/.config/mbsync/mbsyncrc || notify-send -u low -t 6000 'mbsync' '  failed to fetch mail'

