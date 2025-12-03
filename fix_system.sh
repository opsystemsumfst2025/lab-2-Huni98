#!/bin/bash
TARGET_DIR="$1"
if [ -z "$TARGET_DIR" ]; then
  echo "Error: No directory"
  exit 1
fi
find "$TARGET_DIR" -name '*.txt' -exec chmod 644 {} \;
find "$TARGET_DIR" -name '*.sh' -exec chmod 700 {} \;

date >> audit.log
