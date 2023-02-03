#!/bin/sh

os="$(uname)"
tmpfile="/tmp/os"

if [ -e "/tmp/os" ]; then
	os=$(cat $tmpfile)
else
	if [ "$os" = "Linux" ]; then
		grep "Artix" /etc/issue >/dev/null 2>&1 && os=1 || os=2
	elif [ "$os" = "FreeBSD" ]; then
		os=3
	else
		echo "unknown OS"
		exit 1
	fi
	echo $os >$tmpfile
fi

case $os in
	1)
		if_main="eth1"
		if_alt="eth0"
		;;
	2)
		if_main="enx4ce1734c425a"
		if_alt="wlp1s0"
		;;
	3)
		if_main="em0"
		if_alt="wlan0"
		exit
		;;
esac

if grep up "/sys/class/net/$if_main/operstate" >/dev/null 2>&1 && ! [ -z $(ifconfig $if_main 2>/dev/null | awk '/inet / {print $2}') ]; then
	:
elif grep up "/sys/class/net/$if_alt/operstate" >/dev/null 2>&1 && ! [ -z $(ifconfig $if_alt 2>/dev/null | awk '/inet / {print $2}') ]; then
	if_main=$if_alt
else
	exit
fi

echo '${hr}
${color grey}Interface: ${font1}${color white}'$if_main'${font}
${color grey}---------
${color grey}LAN IP:    ${font1}${color white}${addr '$if_main'}${font}
${color grey}VPN IP:    ${font1}${color white}${addr proton0}${font}
${color grey}Public IP: ${color white}${font1}${execi 300 curl -s https://ifconfig.me || echo No Address}${font}${color grey}
${hr}
${color grey}Down: ${color white}${font1}${downspeed '$if_main'} ${font}${color grey}- Up: ${color white}${font1}${upspeed '$if_main'}${font}
${color grey}Down: ${color white}${downspeedgraph '$if_main' bfbfbf c0c0c0  125829120}
${color grey}Up:   ${color white}${upspeedgraph   '$if_main' bfbfbf c0c0c0  125829120}
${hr}
${color grey}DNS:
${font1}${color white}${nameserver 0}${font}
${font1}${color white}${nameserver 1}${font}
${hr}'
