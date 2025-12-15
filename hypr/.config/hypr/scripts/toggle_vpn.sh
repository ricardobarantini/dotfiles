#!/usr/bin/env bash

# Nome da VPN
VPN_NAME="Earthbound Trading"

# Verifica se a VPN está conectada
if nmcli con show --active | grep -q "$VPN_NAME"; then
  MESSAGE="$VPN_NAME is disconnected"
  nmcli con down "$VPN_NAME" >/dev/null
else
  nmcli con up "$VPN_NAME" >/dev/null
  MESSAGE="$VPN_NAME is connected"
fi

pkill -RTMIN+10 waybar
notify-send "Network Manager" "$MESSAGE" -i "/usr/share/icons/Numix-Circle/48/apps/mozilla-vpn-client.svg"
