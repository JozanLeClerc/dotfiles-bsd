#!/bin/sh

os=$(cat "/tmp/os")

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

echo '${color #928374}Interface: ${font1}${color #ebdbb2}'$if_main'${font}
${color #928374}---------
${color #928374}LAN IP: ${font1}${color #ebdbb2}${addr '$if_main'}${font}
${color #928374}DNS IP: ${font1}${color #ebdbb2}${nameserver 0}${font}
${color #928374}WAN IP: ${color #ebdbb2}${font1}${execi 300 curl -s https://ifconfig.me || echo No WAN}${font}
${color #928374}---------
${color #928374}Speed: ${font1}down: ${color #ebdbb2}${font1}${downspeed '$if_main'} ${color #928374}- up: ${color #ebdbb2}${font1}${upspeed '$if_main'}${font}
${color #928374}Down: ${color #ebdbb2}${downspeedgraph '$if_main' bfbfbf c0c0c0  125829120}
${color #928374}Up:   ${color #ebdbb2}${upspeedgraph   '$if_main' bfbfbf c0c0c0  125829120}'

# ${color #928374}VPN IP:    ${font1}${color #ebdbb2}${addr proton0}${font}
