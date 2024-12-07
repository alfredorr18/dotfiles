#!/bin/bash

OPTIONS="Apagar\nReiniciar\nSuspender\nCerrar Sesión\nHibernar\nBloquear"


CHOICE=$(echo -e $OPTIONS | rofi -dmenu -theme ~/.config/rofi/config.rasi -p "Selecciona una opcion")

case "$CHOICE" in 
  "Apagar")
    systemctl poweroff
    ;;
  "Reiniciar")
    systemctl reboot
    ;;
  "Suspender")
    systemctl suspend 
    ;;
  "Cerrar Sesión")
    systemctl logout
    ;;
  "Hibernar")
    systemctl hibernate
    ;;
  "Bloquear")
    ~/.config/i3/launch_i3lock.sh
    ;;
esac

