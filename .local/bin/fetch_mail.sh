#!/bin/sh

set -m

export GNUPGHOME=/home/jozan/.local/share/gnupg
export PASSWORD_STORE_DIR=/home/jozan/.local/share/pass 

mc_file="/tmp/newmailcount"
if [ -f $mc_file ]; then
	pre_count=$(cat $mc_file)
else
	pre_count="$(ls "${MAIL:-/var/mail/jozan}"/bousset.rudy@gmail.com/INBOX/new | wc -l 2>/dev/null)"
	tmp="$(ls "${MAIL:-/var/mail/jozan}"/olsen.oyvind.nor@gmail.com/INBOX/new | wc -l 2>/dev/null)"
	pre_count="$((pre_count + tmp))"
fi
killall mbsync >/dev/null 2>&1
notify-send -u low -t 3000 'mbsync' '  fetching mail...' >/dev/null 2>&1
{
	mbsync -a -c /usr/home/jozan/.config/mbsync/mbsyncrc ||
		notify-send -u low -t 6000 'mbsync' '  failed to fetch mail' >/dev/null 2>&1
}&
gsleep 0.2
kill -74 $(pidof dwmblocks) >/dev/null 2>&1
fg
post_count="$(ls "${MAIL:-/var/mail/jozan}"/bousset.rudy@gmail.com/INBOX/new | wc -l 2>/dev/null)"
tmp="$(ls "${MAIL:-/var/mail/jozan}"/olsen.oyvind.nor@gmail.com/INBOX/new | wc -l 2>/dev/null)"
post_count="$((post_count + tmp))"
if [ $post_count -gt $pre_count ]; then
	notify-send -u normal 'NeoMutt' '  '$post_count' new mail(s)'
fi
echo $post_count >$mc_file
sleep 1
kill -74 $(pidof dwmblocks) >/dev/null 2>&1
