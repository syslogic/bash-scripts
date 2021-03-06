# #!/bin/bash

## Bluetooth Connect & Disconnect
automates bluetoothctl Bluetooth device pairing.

the `exp` script requires expect (`yum install expect.x86_64`).

    arg0 is is a Bluetooth MAC address
    
    example usage:
    
    ./bluetooth_connect.sh 08:EB:ED:F6:53:A3
    ./bluetooth_disconnect.sh 08:EB:ED:F6:53:A3

    ./bluetooth_connect.exp 08:EB:ED:F6:53:A3

## Firebase Backup
dumps a Firebase database to filesystem.

requires firebase-tools (`npm install -g firebase-tools`).

    arg0 is the Firebase projectId
    arg1 is the backup destination directory
    
    example usage:
    
    ./cron_firebase.sh project-12345 /home/backup/firebase


## RHEL Keylayout
it installs package `system-config-keyboard` on RHEL and CentOS
e.g... for switching the default keyboard layout to German.

## Gradle Logs
it logs the Gradle (https://gradle.org) build output to file and then opens that file, in case of errors -
otherwise it opens the LINT results in *default* web-browser.

## wrap_android_emulator.sh (merely obsolete)
it wraps the Android Emulator with CLI options.
merely written, because I was fed up of doing this manually and
the GUI of Android Studio does not permit one to add further parameters
there, in order to configure QEMU & KVM as one wishes.
