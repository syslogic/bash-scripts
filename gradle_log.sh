#!/bin/bash
# it logs gradle output to file, greps for "BUILD SUCCESSFUL" and then it opens that file.
# written 2017-07-10 by Martin Zeitler.
cd ..
WD=`pwd`
LOGFILE=./results/gradle.log
SUCCESS="BUILD SUCCESSFUL"
echo "[GRADLE] build progress initiated for ${WD} ..."
mkdir -p results
./gradlew --info build > ${LOGFILE}
if grep -Fxq ${SUCCESS} ${LOGFILE}
then
    echo "[GRADLE] build progress has completed successfully."
else
    # code if not found
    echo "[BASH] build progress has completed with errors."
fi
gedit ${LOGFILE}
