
#!/usr/bin/env bash

BASE_DIR="$(dirname "$(dirname "$(readlink -f "$0")")")"
source "${BASE_DIR}/lib/config.sh"

run_timer() {
  local minutes=$1
  while [ $minutes -gt 0 ]; do
    echo -ne "⏳ $minutes minute(s) remaining...\r"
    sleep 60
    ((minutes--))
  done
  echo ""
}

