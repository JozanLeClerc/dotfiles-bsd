#!/bin/sh

os="$(uname)"

if [ "$os" = "Linux" ]; then
	grep "Artix" /etc/issue >/dev/null 2>&1 && os=1 || os=2
elif [ "$os" = "FreeBSD" ]; then
	os=3
else
	echo "unknown OS"
	exit 1
fi
echo $os >$tmpfile
