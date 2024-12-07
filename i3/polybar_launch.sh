#!/bin/bash


# Primero eliminamos todas las polybar por si acaso


killall polybar 


while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# Lanzamos la polybar en el primer monitor

polybar main & 


# Lanzamos la segunda polybar en caso de estar conectado el segundo monitor

if [[ $(xrandr -q | grep "HMDI-1-0 connected") ]]; then
  polybar secondary & 
fi
