#!/bin/sh

os=$(cat /tmp/os)

case $os in
	1) ping -c1 -w1 1.1.1.1 >/dev/null 2>&1 || exit ;;
	2) ping -c1 -w1 1.1.1.1 >/dev/null 2>&1 || exit ;;
	3) ping -c1 -t1 1.1.1.1 >/dev/null 2>&1 || exit ;;
esac

echo '${color #ebdbb2}${font1}BBC NEWS WORLD ${hr}${font2}${color #928374}
${rss https://feeds.bbci.co.uk/news/rss.xml 900 item_titles 10}

${color #ebdbb2}${font1}BBC NEWS EUROPE ${hr}${font2}${color #928374}
${rss http://feeds.bbci.co.uk/news/world/europe/rss.xml 900 item_titles 10}

${color #ebdbb2}${font1}HACKER NEWS ${hr}${font2}${color #928374}
${rss https://hnrss.org/frontpage 900 item_titles 10}

${color #ebdbb2}${font1}LOBSTE.RS ${hr}${font2}${color #928374}
${rss https://lobste.rs/rss 900 item_titles 10}'


