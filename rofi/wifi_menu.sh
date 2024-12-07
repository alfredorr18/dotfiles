#!/bin/bash


opciones="Activar\nDesactivar\nInfo Wifi\nVelocidad"

CHOICE=$(echo -e $opciones | rofi -dmenu -theme ~/.config/rofi/config.rasi -p "Seleccina una opcion")

case "$CHOICE" in
  "Activar")
    ~/.config/dunst/scripts/wifi_noti activar
    ;;
  "Desactivar")
    ~/.config/dunst/scripts/wifi_noti desactivar
    ;;
  "Info Wifi")
    ~/.config/dunst/scripts/wifi_noti estado
    ;;
  "Velocidad")
    ~/.config/dunst/scripts/wifi_noti velocidad
    ;;
esac
