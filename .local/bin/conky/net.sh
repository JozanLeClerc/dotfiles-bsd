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

case $os in
	1) icon=" " ;;
	2) icon=" " ;;
	3) icon=" " ;;
esac

echo '${color grey}Net'
# ${hr}${if_up enx4ce1734c425a}
# ${color grey}LAN IP:    ${font1}${color white}${addr enx4ce1734c425a}${font}
# ${color grey}---------
# ${color grey}VPN IP:    ${font1}${color white}${addr proton0}${font}
# ${color grey}---------
# ${color grey}Public IP: ${color white}${font1}${execi 300 curl -s https://ifconfig.me || echo No Address}${font}${color grey}
# ${hr}
# ${color grey}Down: ${color white}${font1}${downspeed enx4ce1734c425a} ${font}${color grey}- Up: ${color white}${font1}${upspeed enx4ce1734c425a}${font}
# ${color grey}Down: ${color white}${downspeedgraph enx4ce1734c425a bfbfbf c0c0c0  125829120}
# ${color grey}Up:   ${color white}${upspeedgraph   enx4ce1734c425a bfbfbf c0c0c0  125829120}
# ${hr}
# ${color grey}DNS:
# ${font1}${color white}${nameserver 0}${font}
# ${font1}${color white}${nameserver 1}${font}
# ${hr}${endif}
