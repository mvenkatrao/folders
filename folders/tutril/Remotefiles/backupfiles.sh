#!/bin/bash

WATCH_DIR=/root/strings
BACKUP_DIR=/root/test_command

inotifywait -m -e create --format '%w%f' "$WATCH_DIR"
while read FILE; do
  echo "Detected new file: $FILE"
cp "$FILE" "$BACKUP_DIR/$(basename $FILE).bak"
done
