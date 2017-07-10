# #!/bin/bash

## cron_firebase.sh
a shell-script (which utilizes firebase-tools `npm install -g firebase-tools`),

in order to have these database dumps contained in a common backup cronjob:

    arg0 is the Firebase projectId
    arg1 is the destination directory
    
    example usage:
    
    cron_firebase.sh project-12345 /home/backups/firebase

## gradle_log.sh
it logs gradle output to file, greps for "BUILD SUCCESSFUL" and then it opens that file.

## wrap_android_emulator.sh
it wraps the Android Emulator with CLI options.
merely written, because I was fed up of doing this manually and
the GUI of Android Studio does not permit one to add parameters.

## keylayout.sh
installs package system-config-keyboard on RHEL and CentOs
... for switching the default keyboard layout to German.
