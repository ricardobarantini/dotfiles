#!/bin/bash

# Nome da VPN
VPN_NAME="Earthbound Trading"

# Verifica se a VPN está conectada
if nmcli con show --active | grep -q "$VPN_NAME"; then
  nmcli con down "$VPN_NAME" >/dev/null
else
  nmcli con up "$VPN_NAME" >/dev/null
fi
