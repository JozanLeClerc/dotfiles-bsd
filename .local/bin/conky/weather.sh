#!/bin/sh

os=$(cat /tmp/os)

case $os in
	1)
		ping -c1 -w1 1.1.1.1 >/dev/null 2>&1 || exit
		;;
	2)
		ping -c1 -w1 1.1.1.1 >/dev/null 2>&1 || exit
		;;
	3)
		ping -c1 -t1 1.1.1.1 >/dev/null 2>&1 || exit
		;;
esac

echo 'WEATHER ${hr}
${font2}${color #ebdbb2}${alignc}${exec curl wttr.in/Lyon?T0 --silent --max-time 3}${font}'
