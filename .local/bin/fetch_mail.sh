#!/bin/sh

set -f
set +f
set -m

export GNUPGHOME=/home/jozan/.local/share/gnupg
export PASSWORD_STORE_DIR=/home/jozan/.local/share/pass 

mc_file="/tmp/newmailcount"
if [ -f $mc_file ]; then
	pre_count=$(cat $mc_file)
else
	pre_count="$(ls "${MAIL:-/var/mail/jozan}"/gmail_br/INBOX/new | wc -l 2>/dev/null)"
	mb1="$(ls "${MAIL:-/var/mail/jozan}"/gmail_oon/INBOX/new | wc -l 2>/dev/null)"
	mb2="$(ls "${MAIL:-/var/mail/jozan}"/gmail_tos/INBOX/new | wc -l 2>/dev/null)"
	pre_count="$((pre_count + mb1 + mb2))"
fi
killall mbsync >/dev/null 2>&1
# notify-send -u low -t 3000 'mbsync' '  fetching mail...' >/dev/null 2>&1
{
	mbsync -a -c /usr/home/jozan/.config/mbsync/mbsyncrc ||
		notify-send -u low -t 6000 'mbsync' '  failed to fetch mail' >/dev/null 2>&1
}&
gsleep 0.2
kill -74 $(pidof dwmblocks) >/dev/null 2>&1
fg
pre_count="$(ls "${MAIL:-/var/mail/jozan}"/gmail_br/INBOX/new | wc -l 2>/dev/null)"
mb1="$(ls "${MAIL:-/var/mail/jozan}"/gmail_oon/INBOX/new | wc -l 2>/dev/null)"
mb2="$(ls "${MAIL:-/var/mail/jozan}"/gmail_tos/INBOX/new | wc -l 2>/dev/null)"
post_count="$((post_count + mb1 + mb2))"
if [ $post_count -gt $pre_count ]; then
	notify-send -u normal 'NeoMutt' '  '$post_count' new mail(s)'
fi
echo $post_count >$mc_file
sleep 1
kill -74 $(pidof dwmblocks) >/dev/null 2>&1
