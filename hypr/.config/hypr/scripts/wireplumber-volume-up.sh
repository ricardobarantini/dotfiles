#!/usr/bin/env bash
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+ && bash ~/.config/hypr/scripts/mako-volume.sh
