#!/bin/sh
case "$1" in
    lock)
        i3lock -c 090000
        ;;
    switch)
        dm-tool switch-to-greeter
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        shutdown 0
        ;;
    *)
        echo "Usage: $0 {lock|switch|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
