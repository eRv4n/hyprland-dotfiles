#!/usr/bin/env bash
DIR="$HOME/.config/waybar/themes"

choice=$(ls -1 "$DIR" | rofi -dmenu -i -p "󰕮 Waybar" -theme ~/.config/rofi/themes/run.rasi)
[ -z "$choice" ] && exit 0
[ -d "$DIR/$choice" ] || exit 0

ln -sf "$DIR/$choice/config.jsonc" "$HOME/.config/waybar/config.jsonc"
ln -sf "$DIR/$choice/style.css"    "$HOME/.config/waybar/style.css"

pkill waybar
setsid -f waybar >/dev/null 2>&1
