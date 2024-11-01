#!/bin/bash

# Dependencies: asusctl, powerprofilesctl, notify-send
asusctl profile -n
power=$(asusctl profile --profile-get | awk '{print $4}')
if [[ $power == "Quiet" ]]; then
  powerprofilesctl set power-saver
elif [[ $power == "Balanced" ]]; then
    powerprofilesctl set balanced
elif [[ $power == "Performance" ]]; then
    powerprofilesctl set performance
fi
notify-send  -a asusctl -t 1200 -u normal -i video-display "Power profile set to $power"
