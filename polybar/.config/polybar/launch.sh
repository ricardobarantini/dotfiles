if [ ! "$XDG_CURRENT_DESKTOP" = "X-Cinnamon" ]; then
  if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
      MONITOR=$m polybar --reload example &
    done
  else
    polybar --reload example &
  fi
fi
