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
	:
fi

echo $if_main'${font}'
[ -z $if_wg ] || echo '${color1}WireGuard: ${color0}ON${font}'
[ -z $if_wg ] || echo '${color1}WG  IP:   ${color0}${goto 70}${addr '$if_wg'}${font}'
echo '${voffset 3}${color1}LAN IP:   ${color0}${goto 70}${addr '$if_main'}${font}'
echo '${color1}DNS IP:  ${color0}${goto 70}${nameserver 0}${font}'
echo '${color1}WAN IP: ${color0}${goto 70}${execi 15 curl -s https://ifconfig.me || echo No WAN}${font}'
