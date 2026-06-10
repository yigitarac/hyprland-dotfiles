#!/usr/bin/env bash

# Rofi henüz boşken görünecek şık ipuçları
if [ -z "$@" ]; then
    echo -en "gg \0icon\tgoogle\n"
    echo -en "yt \0icon\tyoutube\n"
    echo -en "gh \0icon\tgithub\n"
    exit 0
fi

QUERY="$*"

# Gelen komuta göre Brave'i gizlice ve hızlıca tetikle
if [[ "$QUERY" == gg\ * ]]; then
    brave-browser "https://www.google.com/search?q=${QUERY#gg }" >/dev/null 2>&1 &
elif [[ "$QUERY" == yt\ * ]]; then
    brave-browser "https://www.youtube.com/results?search_query=${QUERY#yt }" >/dev/null 2>&1 &
elif [[ "$QUERY" == gh\ * ]]; then
    brave-browser "https://github.com/search?q=${QUERY#gh }" >/dev/null 2>&1 &
else
    # Eğer başta gg, yt veya gh yoksa doğrudan Google'da arasın
    brave-browser "https://www.google.com/search?q=${QUERY}" >/dev/null 2>&1 &
fi

exit 0
