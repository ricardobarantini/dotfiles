#!/usr/bin/env bash

export PATH="$PATH:$HOME/.local/bin"

menu() {
  local prompt="$1"
  local options="$2"
  local extra="$3"
  local preselect="$4"

  read -r -a args <<<"$extra"

  if [[ -n "$preselect" ]]; then
    local index
    index=$(echo -e "$options" | grep -nxF "$preselect" | cut -d: -f1)
    if [[ -n "$index" ]]; then
      args+=("-a" "$index")
    fi
  fi

  echo -e "$options" | walker --dmenu -p "$prompt…" "${args[@]}"
}

show_screenshot_menu() {
  case $(menu "Screenshot" "󰩬  Region\n  Window\n󰍹  Display") in
  *Region*) screenshot ;;
  *Window*) screenshot window ;;
  *Display*) screenshot output ;;
  esac
}

show_screenrecord_menu() {
  case $(menu "Screen Recorder" "󰩬  Region\n󰍹  Display") in
  *Region*) screenrecord ;;
  *Display*) screenrecord output ;;
  esac
}

show_system_menu() {
  case $(menu "System" "  Lock\n󰤄  Suspend\n  Relaunch\n󰜉  Restart\n󰐥  Shutdown") in
  *Lock*) hyprlock ;;
  *Suspend*) systemctl suspend ;;
  *Relaunch*) uwsm stop ;;
  *Restart*) systemctl reboot ;;
  *Shutdown*) systemctl poweroff ;;
  esac
}

go_to_menu() {
  case "${1,,}" in
  *apps*) walker -p "Launch…" ;;
  *screenshot*) show_screenshot_menu ;;
  *screenrecord*) show_screenrecord_menu ;;
  *update*) uwsm app -- ghostty ;;
  *about*) uwsm app -- ghostty ;;
  *system*) show_system_menu ;;
  esac
}

if [[ -n "$1" ]]; then
  go_to_menu "$1"
else
  go_to_menu "system"
fi
