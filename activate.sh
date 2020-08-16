#!/usr/bin/env bash

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
    /opt/Unity/Editor/Unity \
        -batchmode \
        -nographics \
        -logFile /dev/stdout \
        -quit \
        -manualLicenseFile $FILE_PATH)