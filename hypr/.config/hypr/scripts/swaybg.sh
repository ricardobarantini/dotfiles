#!/usr/bin/env bash

get_random_wallpaper() {
  WALLPAPER=$(find $WALLPAPERS_DIR -type f ! -path "*/.git/*" ! -path "*.md" | shuf -n 1)
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

pkill -x swaybg
setsid uwsm app -- swaybg --image $WALLPAPER -m fill >/dev/null 2>&1 &

notify-send "Swaybg" "Wallpaper updated"
