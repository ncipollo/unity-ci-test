#!/usr/bin/env bash

cd ..

# Request the manual activation file for activating unity personal
xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
  /opt/Unity/Editor/Unity \
    -batchmode \
    -nographics \
    -logFile /dev/stdout \
    -quit \
    -createManualActivationFile

cp Unity_v${UNITY_VERSION}.alf out