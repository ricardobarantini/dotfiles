#!/usr/bin/env bash

WALLPAPERS_DIR="$HOME/Pictures/wallpapers"

if [ ! -d $WALLPAPERS_DIR ]; then
  git clone git@github.com:ricardobarantini/wallpapers.git ~/Pictures/wallpapers
fi

WALLPAPER=$(find $WALLPAPERS_DIR -type f ! -path "*/.git/*" ! -path "*.md" | shuf -n 1)

uwsm app -- swaybg --image $WALLPAPER -m fill
