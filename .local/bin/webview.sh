#!/usr/local/bin/dash

ext="${1##*.}"
mpvFiles="mkv mp4 gif"
sxivFiles="png jpg jpeg jpe xpm"
wgetFiles="flac mp3 mp3?source=feed opus pdf doc docx"

cd ~/dl || exit

if echo "$sxivFiles" | grep -w "$ext" > /dev/null; then
	nohup sxiv "$1" > /dev/null &
elif echo "$mpvFiles" | grep -w "$ext" > /dev/null; then
	nohup mpv --loop --quiet "$1" > /dev/null &
elif echo "$wgetFiles" | grep -w "$ext" > /dev/null; then
	clear
	fetch "$1"
else
	clear
	mpv-view.pl "$1"
fi
