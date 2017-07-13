#!/bin/bash
# it logs the Gradle build output to file
# and then opens that file, in case of errors.
# otherwise it opens the LINT results in *default* web-browser.
# written 2017-07-10 by Martin Zeitler, Bavaria.
STUDIO="/home/google/android-studio/bin/studio.sh"

cd ..
WD=`pwd`
mkdir -p results
GRADLE_LOGFILE="${WD}/results/gradle.log"
LINT_RESULTS="file://${WD}/mobile/build/reports/lint-results.html"
echo "[GRADLE] build process initiated for ${WD} ..."
./gradlew --info build > ${GRADLE_LOGFILE}

if grep -Fxq "BUILD SUCCESSFUL" ${GRADLE_LOGFILE}
then
    # passing the LINT results to the *default* web-browser
    echo "[GRADLE] build process completed."
    if which xdg-open > /dev/null
    then
      xdg-open $LINT_RESULTS
    elif which gnome-open > /dev/null
    then
      gnome-open $LINT_RESULTS
    fi
else
    # passing the GRADLE log-file to Android Studio IDE.
    echo "[GRADLE] build process has completed with errors."
    $STUDIO $GRADLE_LOGFILE
fi

