if [ -z "$TMUX" ] && [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
  systemctl --user reset-failed 2>/dev/null
  if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
  fi
fi
