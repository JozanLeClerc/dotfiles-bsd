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
	echo '${font1}NETWORK ${hr}${font}
${color #928374}No network${font}'
	exit
fi

echo '${font1}NETWORK ${hr}${font}
${color #928374}Interface: ${font2}${color #ebdbb2}'$if_main'${font}
${color #928374}---------
${color #928374}LAN IP: ${font2}${color #ebdbb2}${addr '$if_main'}${font}
${color #928374}DNS IP: ${font2}${color #ebdbb2}${nameserver 0}${font}
${color #928374}WAN IP: ${color #ebdbb2}${font2}${execi 300 curl -s https://ifconfig.me || echo No WAN}${font}
${color #928374}---------
${color #928374}${font}Down: ${color #ebdbb2}${font2}${downspeed '$if_main'}${goto 195}${color #928374}${font}Up: ${color #ebdbb2}${font2}${upspeed '$if_main'}${font}
${color #928374}${font}Sent: ${color #ebdbb2}${font2}${totalup '$if_main'}${goto 195}${color #928374}${font}Received: ${color #ebdbb2}${font2}${totaldown '$if_main'}
${color #ebdbb2}${downspeedgraph '$if_main' 50,185 bfbfbf c0c0c0 125829120 -t}${goto 195}${color #ebdbb2}${upspeedgraph '$if_main' 50,185 bfbfbf c0c0c0 125829120 -t}'

# ${color #928374}VPN IP:    ${font2}${color #ebdbb2}${addr proton0}${font}
