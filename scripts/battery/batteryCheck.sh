#!/bin/bash
batLvl=`acpi -b | cut -d " " -f4 | cut -d "%" -f1`
if [ $batLvl -le 20 ]; then
    /bin/bash ~/crontabScripts/batteryNotif.sh
else
    if [ $batLvl -ge 99 ]; then
        /bin/bash ~/crontabScripts/batteryNotif.sh
    fi
fi
