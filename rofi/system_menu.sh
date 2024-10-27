#!/bin/bash

OPTIONS=" Apagar\n Reiniciar\n Suspender\n Cerrar Sesión\n Bloquear"


CHOICE=$(echo -e $OPTIONS | rofi -dmenu -theme /home/user00/.config/rofi/config.rasi -p "Selecciona una opcion")

case "$CHOICE" in 
  " Apagar")
    systemctl poweroff
    ;;
  " Reiniciar")
    systemctl reboot
    ;;
  " Suspender")
    systemctl suspend 
    ;;
  " Cerrar Sesión")
    systemctl logout
    ;;
  " Bloquear")
    ~/.config/i3/launch_i3lock.sh
    ;;
esac

