#!/bin/bash

if [[ $(playerctl status) = "Playing" ]]; then
  playerctl -a pause
fi

hyprlock

