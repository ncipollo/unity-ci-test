#!/usr/bin/env bash

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' glxinfo
