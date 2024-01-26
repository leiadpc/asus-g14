#!/bin/bash
asusctl profile -n
power=$(asusctl profile --profile-get)
notify-send -t 700 -u normal -i video-display "$power"
