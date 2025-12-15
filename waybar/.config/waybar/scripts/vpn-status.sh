#!/usr/bin/env bash

VPN_NAME=$(nmcli -t -f NAME,TYPE connection show --active | grep ":vpn" | cut -d: -f1)

if [[ $VPN_NAME ]]; then
  echo "{\"text\": \"󰒃\", \"tooltip\": \"$VPN_NAME\"}"
fi
