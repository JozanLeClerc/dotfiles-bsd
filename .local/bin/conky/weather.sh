#!/bin/sh

case "$(hostname -s)" in
	mother | po-rbo)
		ping -c1 -w1 1.1.1.1 >/dev/null 2>&1 || exit
		;;
	fbsd-tp)
		ping -c1 -t1 1.1.1.1 >/dev/null 2>&1 || exit
		;;
esac

echo '${font1}WEAT ${hr 2}
${font2}${color0}${alignc}${execi 1800 curl wttr.in/Lyon?T0 --silent --max-time 3}${font}'
