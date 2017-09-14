#!/bin/bash
MAC="00:00:00:00:00:00"
if [ "$#" -ge  "1" ] then
  MAC=$1
fi
echo "disconnecting Bluetooth Device @ $MAC!"
echo -e "disconnect $MAC\nquit" | bluetoothctl
# sleep 20
