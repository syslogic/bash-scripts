#!/bin/bash
MAC="00:00:00:00:00:00"
if [ "$#" -ge  "1" ] then
  MAC=$1
fi
echo "connecting Bluetooth Device @ $MAC!"
echo -e "trust $MAC\nconnect $MAC\nquit" | bluetoothctl
# sleep 20
