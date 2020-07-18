#!/usr/local/bin/dash

date=$(date)
git -C ~/.elfeed add . >/dev/null 2>&1
git -C ~/.elfeed commit -m "$date" >/dev/null 2>&1 || exit 1
git -C ~/.elfeed push origin master >/dev/null 2>&1
exit
