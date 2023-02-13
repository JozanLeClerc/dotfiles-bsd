#!/bin/sh

os=$(cat "/tmp/os")

# ifconfig | command grep '^[a-z]' | awk '{print $1}' | sed '{/lo/d;s/://;}'

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

echo -n $if_main
