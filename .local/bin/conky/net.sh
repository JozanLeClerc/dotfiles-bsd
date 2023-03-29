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

if_wg="wg0"
if [ -e "/sys/class/net/$if_wg/operstate" ] && ! [ -z $(ifconfig $if_wg 2>/dev/null | awk '/inet / {print $2}') ]; then
	:
else
	if_wg=""
fi

if grep up "/sys/class/net/$if_main/operstate" >/dev/null 2>&1 && ! [ -z $(ifconfig $if_main 2>/dev/null | awk '/inet / {print $2}') ]; then
	:
elif grep up "/sys/class/net/$if_alt/operstate" >/dev/null 2>&1 && ! [ -z $(ifconfig $if_alt 2>/dev/null | awk '/inet / {print $2}') ]; then
	if_main=$if_alt
else
	echo '${color1}NET ${hr}${font}
${color1}No network${font}'
	exit
fi

echo '${color1}NET ${hr 2}${font}
${color1}Interface: ${color0}'$if_main'${font}'
[ -z $if_wg ] || echo '${color1}WireGuard: ${color0}ON${font}'
echo '${color1}---------
${color1}LAN IP: ${color0}${addr '$if_main'}${font}'
[ -z $if_wg ] || echo '${color1}WG  IP: ${color0}${addr '$if_wg'}${font}'
echo '${color1}DNS IP: ${color0}${nameserver 0}${font}'
echo '${color1}WAN IP: ${color0}${execi 15 curl -s https://ifconfig.me || echo No WAN}${font}
${color1}---------
${color1}D: ${color0}${downspeed '$if_main'}${font}${color1}  --  Total: ${color0}${totaldown '$if_main'}${font}
${color1}U: ${color0}${upspeed '$if_main'}${font}${color1}  --  Total: ${color0}${totalup '$if_main'}${font}'
