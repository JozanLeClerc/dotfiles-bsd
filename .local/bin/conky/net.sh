#!/bin/sh

case "$(hostname -s)" in
	mother)
		if_main="eth1"
		if_alt="eth0"
		;;
	po-rbo)
		if_main="enx34298f762de7"
		if_alt="wlp1s0"
		;;
	mars)
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
	echo '${color1}${font1}NET ${hr}${font}
${color1}No network${font}'
	exit
fi

echo '${color1}${font1}NET ${hr 2}${font}
${color1}Interface: ${font2}${color0}'$if_main'${font}
${color1}---------
${color1}LAN IP: ${font2}${color0}${addr '$if_main'}${font}
${color1}DNS IP: ${font2}${color0}${nameserver 0}${font}
${color1}WAN IP: ${color0}${font2}${execi 300 curl -s https://ifconfig.me || echo No WAN}${font}
${color1}---------
${color1}D: ${color0}${font2}${downspeed '$if_main'}${font}${color1}  --  Total: ${color0}${font2}${totaldown '$if_main'}${font}
${color1}U: ${color0}${font2}${upspeed '$if_main'}${font}${color1}  --  Total: ${color0}${font2}${totalup '$if_main'}${font}'


# ${color1}VPN IP:    ${font2}${color0}${addr proton0}${font}
