#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "calc "
  exit 0
fi

if [[ "$1" =~ ^calc[[:space:]]+(.+) ]]; then
  expr="${BASH_REMATCH[1]}"
  result="$(qalc -t "$expr" 2>/dev/null | head -n1)"
  [ -n "$result" ] && echo "$result" | wl-copy
  notify-send "Calculator" "$expr = $result (copied)"
fi