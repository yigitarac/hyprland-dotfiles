#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "gg "
  echo "yt "
  echo "gh "
  exit 0
fi

prefix="$(echo "$1" | awk '{print $1}')"
query="$(echo "$1" | cut -d' ' -f2-)"

case "$prefix" in
  gg) xdg-open "https://www.google.com/search?q=${query// /+}" ;;
  yt) xdg-open "https://www.youtube.com/results?search_query=${query// /+}" ;;
  gh) xdg-open "https://github.com/search?q=${query// /+}" ;;
esac