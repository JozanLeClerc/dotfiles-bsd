#!/bin/sh
#
# cover.sh - Download cover from Last.fm and overlay with image
#
# Florian <floriandejonckheere.be>
#
# bug: it detects the artist change twice

## CONFIGURATION ##
# Folder for cached album art
# Don't use ~, as conky will treat it as a regular directory name
# CACHE="$HOME/.cache/covers"
# API Key for Last.fm
# APIKEY="b25b959554ed76058ac220b7b2e0a026"
# Log file, only for debugging purposes
# LOG=/tmp/conky-mpd.log
TMP=/tmp/conkympd.tmp

# Check for vital commands
# CMD="mpc curl convert"
# for CHECK in $CMD; do
# 	[ ! "$CHECK" ] && echo "Command $CHECK not found. Exiting." && exit 1
# done
# [ ! -d "$CACHE" ] && mkdir -p "$CACHE"

playing="$(mpc --format '%artist% - %album%' | head -1)"

[ ! -f $TMP ] && touch $TMP
[ "$(cat $TMP)" = "$playing" ] && exit 0
# [ "$(cat $TMP)" = "$playing" ] && echo "Same artist/album" >> $LOG && exit 0
# echo "Artist/album changed: $playing" >> $LOG

#[ -f "/tmp/conkyCover.png" ] && rm "/tmp/conkyCover.png"
cp "$HOME"/.config/conky-mpd/nocover.png /tmp/conkyCover.png
# echo "NoCover" >> $LOG

filedir="$(dirname "$XDG_MUSIC_DIR/$(mpc --format %file% | head -n1)")"
coverfile="$(find "$filedir" -maxdepth 1 -type f \( -iname 'cover.jpg' -o -iname 'cover.png' -o -iname 'folder.jpg' -o -iname 'folder.png' -o -iname '*.jpg' -o -iname '*.png' \) -print -quit)"
#COVER="$CACHE/$ARTIST - $ALBUM.jpg"
## Is cover cached?
#if [ ! -f "$COVER" ]; then
## Nope. Download.
#	echo "Downloading cover for $ARTIST - $ALBUM" >> $LOG
#	# Download XML info
#	curl --data-urlencode artist="$ARTIST" --data-urlencode album="$ALBUM" "http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=$APIKEY" -o /tmp/lastfm.xml &> /dev/null
#	echo "Exit: $?. Downloaded $(wc -l /tmp/lastfm.xml | cut -d' ' -f1) bytes." >> $LOG
#	# Strip XML and download mega large cover to cache
#	curl $(sed -n 's|<image size="mega">\(.*\)<\/image>|\1|p' /tmp/lastfm.xml) -o "$COVER" &> /dev/null
#	echo "Exit: $?" >> $LOG
#	echo "Downloaded to $COVER." >> $LOG
#fi
# Copy cache for processing
# echo "Copying $coverfile." >> $LOG
# cp "$COVER" /tmp/cover.jpg
# Downscale to fit overlay
# convert /tmp/cover.jpg -resize 366 /tmp/cover.png >> $LOG
## Enlarge canvas to fit overlay
#convert /tmp/cover.png -background none -extent 500x455-84-44 /tmp/cover.png >> $LOG
## Overlay overlay over cover
#convert /tmp/cover.png $HOME/.config/conky-mpd/case.png -composite /tmp/cover.png >> $LOG
## Resize for immediate use
# convert /tmp/cover.png -resize 120 /tmp/conkyCover.png >> $LOG
convert "$coverfile" -resize 100 /tmp/conkyCover.png # >> $LOG
## Set current artist
echo "$playing" > $TMP
#rm /tmp/cover.jpg /tmp/cover.png

