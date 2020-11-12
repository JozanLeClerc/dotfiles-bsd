#!/usr/local/bin/dash

[ "$5" = "LOW" ] && exit
echo $3 > $HOME/file
[ "$3" ] || exit
words=$(printf "$3" | sed 's/<b>//g' | sed 's/<\/b>//g' | sed 's/[^a-zA-Z0-9?!.,% ]//g')
espeak "$words"
