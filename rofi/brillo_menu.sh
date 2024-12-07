#!/bin/bash


opciones="Subir Brillo\nBajar Brillo\nEstado"

CHOICE=$(echo -e $opciones | rofi -dmenu -theme ~/.config/rofi/config.rasi -p "Seleccina una opcion")

case "$CHOICE" in
  "Subir Brillo")
    ~/.config/dunst/scripts/brillo_noti subir
    ;;
  "Bajar Brillo")
    ~/.config/dunst/scripts/brillo_noti bajar
    ;;
  "Estado")
    ~/.config/dunst/scripts/brillo_noti estado
    ;;
esac

