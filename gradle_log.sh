#!/bin/bash
# it logs the gradle build output to file and opens that file, in case of errors.
# written 2017-07-10 by Martin Zeitler.
cd ..
WD=`pwd`
LOGFILE=$WD/results/gradle.log
mkdir -p results

echo "[GRADLE] build process initiated for ${WD} ..."
./gradlew --info build > ${LOGFILE}

if grep -Fxq "BUILD SUCCESSFUL" ${LOGFILE}
then
    echo "[GRADLE] build has completed successfully."
else
    echo "[GRADLE] build has completed with errors."
    gedit $LOGFILE
fi
