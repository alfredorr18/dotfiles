#!/bin/bash

opciones="Subir Volumen\nBajar Volumen\nMutear\nInfo"

CHOICE=$(echo -e $opciones | rofi -dmenu -theme ~/.config/rofi/config.rasi -p "Seleccina una opcion")

case "$CHOICE" in
  "Subir Volumen")
    ~/.config/dunst/scripts/changeVolume subir
    ;;
  "Bajar Volumen")
    ~/.config/dunst/scripts/changeVolume bajar
    ;;
  "Mutear")
    ~/.config/dunst/scripts/changeVolume mutear
    ;;
  "Info")
    ~/.config/dunst/scripts/changeVolume estado
    ;;
esac



