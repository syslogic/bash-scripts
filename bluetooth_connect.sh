#!/bin/bash
MAC="00:00:00:00:00:00"
echo "connecting the SoundCore @ $MAC!"
echo -e "trust $MAC\nconnect $MAC\nquit" | bluetoothctl
# sleep 20
