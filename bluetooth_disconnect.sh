#!/bin/bash
MAC="00:00:00:00:00:00"
echo "disconnecting the SoundCore @ $MAC!"
echo -e "disconnect $MAC\nquit" | bluetoothctl
# sleep 20
