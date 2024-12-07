#!/bin/bash


# Script para lanzar un segundo monitor en caso de estar configurado


if [[ $(xrandr -q | grep "HDMI-1-0 connected") ]];then

  xrandr --output HDMI-1-0 --auto --above eDP-1

fi
