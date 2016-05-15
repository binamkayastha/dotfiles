#!/bin/bash
exec /usr/bin/notify-send -t 10 -u normal "$(acpi -b | cut -d " " -f3,4,5 | cut -d ":" -f1,2)"
