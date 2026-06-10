#!/bin/bash

# Senin temana dokunmadan, sadece bu menü için kutu boyutunu (width) ve satır sayısını (lines) ayarlıyoruz.
secim=$(printf "  Kapat\n  Yeniden Başlat\n  Uyku\n󰗽  Çıkış" | rofi -dmenu -i -p "  Güç" -theme-str 'window {width: 350px;} listview {lines: 4;}')

case "$secim" in
    "  Kapat") systemctl poweroff ;;
    "  Yeniden Başlat") systemctl reboot ;;
    "  Uyku") systemctl suspend ;;
    "󰗽  Çıkış") hyprctl dispatch exit ;;
esac