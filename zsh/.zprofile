#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#  exec Hyprland
#fi

if [ -z "$TMUX" ] && [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
  if uwsm check may-start && uwsm select; then
    exec uwsm start hyprland-uwsm.desktop
  fi
fi
