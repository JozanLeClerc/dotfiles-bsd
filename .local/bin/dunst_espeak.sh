#!/usr/local/bin/dash

[ "$5" = "LOW" ] && exit
[ "$3" ] || exit
words=$(printf "$3" | sed 's/<b>//g' | sed 's/<\/b>//g' | sed 's/[^a-zA-Z0-9?!.,% ]//g')
words=$(printf "%s\n" "$words" | awk '{for (i=1;i<11;i++)print $i }' | tr '\n' ' ')
espeak "$words"
