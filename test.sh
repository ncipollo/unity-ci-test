#!/usr/bin/env bash

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
    /opt/Unity/Editor/Unity \
      -batchmode \
      -logFile "$FULL_ARTIFACTS_PATH/editmode.log" \
      -projectPath "$UNITY_PROJECT_PATH" \
      -runTests \
      -testPlatform editmode \
      -testResults "$FULL_ARTIFACTS_PATH/editmode-results.xml" \
      $CUSTOM_PARAMETERS