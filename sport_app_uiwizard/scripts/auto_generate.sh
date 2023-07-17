#!/bin/bash

EN_US_FILE="../assets/translations/en-US.json"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LAST_MODIFIED=$(stat -f %m "$SCRIPT_DIR/$EN_US_FILE")

while true; do
  CURRENT_MODIFIED=$(stat -f %m "$SCRIPT_DIR/$EN_US_FILE")

  if [[ $CURRENT_MODIFIED -gt $LAST_MODIFIED ]]; then
    echo "File changed"
    bash "$SCRIPT_DIR/lang.sh"
    LAST_MODIFIED=$CURRENT_MODIFIED
  fi

  sleep 1 
done
