#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#  exec Hyprland
#fi

if uwsm check may-start && uwsm select; then
  exec uwsm start hyprland-uwsm.desktop
fi
