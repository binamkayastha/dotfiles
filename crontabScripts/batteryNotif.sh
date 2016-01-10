#!/bin/bash
exec /usr/bin/notify-send -u critical -t 10000 "$(acpi -b | cut -d " " -f3,4,5 | cut -d ":" -f1,2)"
