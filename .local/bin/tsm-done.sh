#!/usr/local/bin/dash

notify-send \
	-u normal \
	-t 10000 \
	'Transmission' \
	"  Torrent <b"$TR_TORRENT_NAME"</b> downloaded to <b>"$TR_TORRENT_DIR"</b>"
