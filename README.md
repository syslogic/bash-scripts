# #!/bin/bash

## cron_firebase.sh
it utilizes firebase-tools (`npm install -g firebase-tools`),

in order to have these database dumps contained within a common backup cronjob:

    arg0 is the Firebase projectId
    arg1 is the backup destination directory
    
    example usage:
    
    ./cron_firebase.sh project-12345 /home/backups/firebase

## gradle_log.sh
it logs Gradle (https://gradle.org) build output to file and opens that file, in case of errors. when executing the script from within Android Studio, one probably should replace `gedit` with the path to `studio64` (just used gedit, so that it is rather portable).

## wrap_android_emulator.sh
it wraps the Android Emulator with CLI options.
merely written, because I was fed up of doing this manually and
the GUI of Android Studio does not permit one to add further parameters
there, in order to configure QEMU & KVM as one wishes.

## keylayout.sh
it installs package `system-config-keyboard` on RHEL and CentOS
e.g... for switching the default keyboard layout to German.
