if [ -z "$TMUX" ] && [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
  if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
  fi
fi

eval "$(phpenv init -)"
