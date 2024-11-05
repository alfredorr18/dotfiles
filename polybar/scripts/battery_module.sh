#!/bin/bash


temp_file="/tmp/polybar_battery_animation"

battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

charging_battery=(" " " " " " " " " ")

if [ -f "temp_file" ];then
  animation_battery=$(cat "temp_file")
else
  animation_battery=0
fi

animation_battery=$(( (animation_battery + 1) % ${#charging_battery[@]} ))

echo "$animation_battery" > "$temp_file"

if [ "$status" = "Charging" ];then
  echo "${charging_battery[$animation_battery]} $battery_level%"
else
  if [ "$battery_level" -ge 100 ];then
    echo "Full"
  elif [ "$battery_level" -ge 75 ];then
    echo "Medium"
  elif [ "$battery_level" -ge 50 ];then
    echo "Low"
  elif [ "$battery_level" -ge 25 ];then
    echo "Critical"
  fi
fi 
