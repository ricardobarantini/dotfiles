#!/usr/bin/env bash

get_random_wallpaper() {
  export WALLPAPER=$(find $WALLPAPERS_DIR -type f ! -path "*/.git/*" ! -path "*.md" | shuf -n 1)
}

WALLPAPERS_DIR="$HOME/.config/wallpapers"

if [ ! -d $WALLPAPERS_DIR ]; then
  git clone git@github.com:ricardobarantini/wallpapers.git $WALLPAPERS_DIR
fi

get_random_wallpaper

if [ -n "$1" ]; then
  if [ -n "$(find $WALLPAPES_DIR -name "$1" -print -quit)" ]; then
    WALLPAPER=$(find $WALLPAPES_DIR -name "$1" -print -quit)
  fi
fi

awww img $WALLPAPER --transition-type random

notify-send "Awww" "Wallpaper updated" -i /usr/share/icons/Numix-Circle/48/apps/preferences-desktop-wallpaper.svg
