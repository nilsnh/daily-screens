#!/usr/bin/env bash

# 2018-08-25
TODAY=$(date "+%Y-%m-%d")

PROJ_DIR="$HOME/daily-screens"
DEST_DIR="$PROJ_DIR/$TODAY"

# Build todays folder if not present
mkdir -p $DEST_DIR

screencapture -xm "$PROJ_DIR/tmp.jpg"

# Build file name like 2018-08-25-15:47.jpg
mv "$PROJ_DIR/tmp.jpg" "$DEST_DIR/$(date "+%Y-%m-%d-%H:%M").jpg"
