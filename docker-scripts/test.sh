#!/usr/bin/env bash
./activate.sh

cd .. 

DIR="$(pwd)"
OUT="${DIR}/out"

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
    /opt/Unity/Editor/Unity \
      -batchmode \
      -logFile /dev/stdout \
      -projectPath "." \
      -runTests \
      -testPlatform editmode \
      -testResults "$OUT/editmode-results.xml" \