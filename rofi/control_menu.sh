#!/bin/bash

opciones="Wifi\nBluetooth\nVolumen\nSistema\nBrillo"


CHOICE=$(echo -e $opciones | rofi -dmenu -theme ~/.config/rofi/config.rasi -p "Seleccina una opcion")

case "$CHOICE" in
  "Wifi")
    ~/.config/rofi/wifi_menu.sh
    ;;
  "Bluetooth")
    ~/.config/rofi/bluetooth_menu.sh
    ;;
  "Volumen")
    ~/.config/rofi/volumen_menu.sh
    ;;
  "Sistema")
    ~/.config/rofi/system_menu.sh
    ;;
  "Brillo")
    ~/.config/rofi/brillo_menu.sh
    ;;
esac
