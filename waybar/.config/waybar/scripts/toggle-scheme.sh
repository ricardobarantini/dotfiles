#!/usr/bin/env bash

check_mode() {
  local current_scheme=$(gsettings get org.gnome.desktop.interface color-scheme)

  if [[ $current_scheme == "'prefer-dark'" ]]; then
    echo ""
  else
    echo ""
  fi
}

toggle_mode() {
  local current_scheme=$(gsettings get org.gnome.desktop.interface color-scheme)

  if [[ $current_scheme == "'prefer-dark'" ]]; then
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
    MESSAGE="Interface scheme set to light"
  else
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    MESSAGE="Interface scheme set to dark"
  fi
}

if [[ "$1" == "toggle" ]]; then
  toggle_mode

  notify-send "Color Scheme" "$MESSAGE"
fi

check_mode
