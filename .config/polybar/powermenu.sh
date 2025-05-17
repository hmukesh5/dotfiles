#!/bin/bash

export DISPLAY=:0
export XAUTHORITY="$HOME/.Xauthority"

# options list
options="lock\nlogout\nsleep\nshutdown\nreboot"

if [[ -z "$1" ]]; then
    # no argument = print options
    echo -e "$options"
else
    # argument = user selected this option
    case "$1" in
        lock) betterlockscreen -l dim --time-format "%I:%M %p" ;;
        logout) i3-msg exit ;;
        sleep) systemctl suspend ;;
        shutdown) systemctl poweroff ;;
        reboot) systemctl reboot ;;
    esac
fi

