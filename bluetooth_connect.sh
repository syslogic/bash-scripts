#!/bin/bash
# $1 is a Bluetooth MAC address.
# example usage: bluetooth_connect.sh 01:02:03:04:05:06
# currently being triggered by /usr/lib/udev/rules.d/60-soundcore.rules
command -v bluetoothctl >/dev/null 2>&1 || { echo >&2 "bluetoothctl is not installed."; exit 1; }

MAC="08:EB:ED:F6:53:A3"
if [ "$#" -ge  "1" ]
then
  MAC=$1
fi

echo "connecting Bluetooth Device @ $MAC!"
echo -e "trust $MAC\nconnect $MAC\nquit" | bluetoothctl
# sleep 10
