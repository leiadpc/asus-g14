#! /bin/bash
status=$(gsettings get org.gnome.desktop.peripherals.touchpad disable-while-typing)
if [ "$status" == "true" ]
then gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing false && notify-send --icon=input-touchpad-symbolic --app-name="Touchpad Toggle" "Touchpad enabled while typing" 
elif [ "$status" != "true" ]
then gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true && notify-send --icon=touchpad-disabled-symbolic --app-name="Touchpad Toggle" "Touchpad disabled while typing"
fi

