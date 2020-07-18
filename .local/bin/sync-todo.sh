#!/usr/local/bin/dash

date=$(date)
git -C /usr/home/jozan/.emacs.d/org/todo add . >/dev/null 2>&1
git -C /usr/home/jozan/.emacs.d/org/todo commit -m "$date" >/dev/null 2>&1 || exit 1
git -C /usr/home/jozan/.emacs.d/org/todo push origin master >/dev/null 2>&1
exit
