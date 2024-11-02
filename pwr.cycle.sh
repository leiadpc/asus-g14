#!/bin/bash

# Dependencies: asusctl, powerprofilesctl, notify-send
asusctl profile -n
syspwr=$(powerprofilesctl get)
power=$(asusctl profile --profile-get | awk '{print $4}')
if [ $power == "Quiet" -a $syspwr != "power-saver" ]; then
  powerprofilesctl set power-saver
elif [ $power == "Balanced" -a $syspwr != "balanced" ]; then
    powerprofilesctl set balanced
elif [ $power == "Performance" -a $syspwr != "performance" ]; then
    powerprofilesctl set performance
fi
notify-send  -a asusctl -t 1200 -u normal -i video-display "Power profile set to $power"
