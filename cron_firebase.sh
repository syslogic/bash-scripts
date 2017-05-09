#!/bin/bash
# $1 is the Firebase projectId.
# $2 is the destination directory. 
# example usage: cron_firebase.sh project-12345 /home/backups/firebase
# currently being triggered by /etc/cron.hourly/firebase-hourly.cron
PROJECTID=$1
DESTINATION=$2
FIREBASE="$(which firebase)"
TIMESTAMP="$(date +"%Y-%m-%d %H:%M")"
NOW="$(date +"%Y-%m-%d_%H%M")"
cd $DESTINATION
$FIREBASE --project $PROJECTID database:get / > ./$PROJECTID.$NOW.json
tar -pczf $PROJECTID.$NOW.tar.gz ./$PROJECTID.$NOW.json && rm ./$PROJECTID.$NOW.json
