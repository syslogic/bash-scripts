# #!/bin/bash

## cron_firebase.sh
it utilizes firebase-tools (`npm install -g firebase-tools`),

in order to have these database dumps contained within a common backup cronjob:

    arg0 is the Firebase projectId
    arg1 is the backup destination directory
    
    example usage:
    
    ./cron_firebase.sh project-12345 /home/backups/firebase

## gradle_log.sh
it logs the Gradle (https://gradle.org) build output to file and then opens that file, in case of errors -
otherwise it opens the LINT results in *default* web-browser.

## wrap_android_emulator.sh (merely obsolete)
it wraps the Android Emulator with CLI options.
merely written, because I was fed up of doing this manually and
the GUI of Android Studio does not permit one to add further parameters
there, in order to configure QEMU & KVM as one wishes.

## keylayout.sh
it installs package `system-config-keyboard` on RHEL and CentOS
e.g... for switching the default keyboard layout to German.

## bluetooth_connect.sh & bluetooth_disconnect.sh
it automates bluetoothctl Bluetooth device pairing.
