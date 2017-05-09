# #!/bin/bash

## .bash_aliases
    
some `.bash_aliases` snippets:
    
    # Unreal Engine
    alias u4ed       = "/home/epicgames/UnrealEngine/Engine/Binaries/Linux/UE4Editor"
    alias u4frontend = "/home/epicgames/UnrealEngine/Engine/Binaries/Linux/UnrealFrontend"

## cron_firebase.sh
a shell-script, which utilizes firebase-tools `npm install -g firebase-tools`,

in order to have these database dumps contained in a common backup cronjob:

    arg0 is the Firebase projectId
    arg1 is the destination directory
    
    example usage:
    
    cron_firebase.sh project-12345 /home/backups/firebase

## wrap_android_emulator.sh
It wraps the Android Emulator with CLI options.
merely written, because I was fed up of doing this manually and
the GUI of Android Studio does not permit one to add parameters.
