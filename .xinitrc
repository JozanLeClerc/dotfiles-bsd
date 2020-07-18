source ~/.profile
export SXHKD_SHELL=/usr/local/bin/dash
export LANG=en_US.UTF-8
exec sxhkd &
dbus-launch bspwm
