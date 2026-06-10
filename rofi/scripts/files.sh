#!/usr/bin/env bash

if [ -z "$1" ]; then
  fd . ~ --type f --hidden --exclude .git 2>/dev/null | head -n 400
  exit 0
fi

[ -f "$1" ] && xdg-open "$1"