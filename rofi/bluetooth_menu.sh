#!/bin/bash

opciones="Conectar\nDesconectar\nEstado"

CHOICE=&(echo -e $opciones | rofi -dmenu -theme ~/.config/rofi/config.rasi -p "Selecciona una opcion")

case "$CHOICE" in
  "Conectar")
    ~/.config/dunst/scripts/bluetooth_noti conectar
    ;;
  "Desconectar")
    ~/.config/dunst/scripts/bluetooth_noti desconectar
    ;;
  "Estado")
    ~/.config/dunst/scripts/bluetooth_noti estado
    ;;
esac


