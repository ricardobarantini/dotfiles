#!/bin/bash

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
  else
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
  fi
}

if [[ "$1" == "toggle" ]]; then
  toggle_mode
fi

check_mode
