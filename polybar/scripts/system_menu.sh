#!/bin/bash

OPTIONS=" Apagar\n Reiniciar\n Suspender\n Cerrar Sesión\n Bloquear"


CHOICE=$(echo -e $OPTIONS | rofi -dmenu -theme ../../rofi/config.rasi -p "Selecciona una opcion")

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
    ../../i3/launch_i3lock.sh
    ;;
esac

