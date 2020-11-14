#!/usr/local/bin/dash

[ "$5" = "LOW" ] && exit
[ "$3" ] || exit
words=$(printf "%s" "$3" |
	sed 's/<b>//g' |
	sed 's/<\/b>//g' |
	sed 's/[^a-zA-Z0-9?!.,% ]//g')
espeak "$words"
