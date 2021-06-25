#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/applets/style.sh)"

dir="$HOME/.config/rofi/applets/applets/configs/$style"
rofi_command="rofi -theme $dir/mpd.rasi"

# Gets the current status of mpd (for us to parse it later on)
status=$(playerctl --player=playerctld status 2>/dev/null)
# Defines the Play / Pause option content
if [ "$status" = "Playing" ]; then
    play_pause=""
else
    play_pause=""
fi
active=""
urgent=""




stop=""
next=""
previous=""

# Variable passed to rofi
options="$previous\n$play_pause\n$next"

# Get the current playing song
current=$(playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}" | cut -c1-40)
# If mpd isn't running it will return an empty string, we don't want to display that
if [[ -z "$current" ]]; then
    current="-"
fi

# Spawn the mpd menu with the "Play / Pause" entry selected by default
chosen="$(echo -e "$options" | $rofi_command -p "  $current" -dmenu $active $urgent -selected-row 1)"
case $chosen in
    $previous)
        playerctl previous && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $play_pause)
        playerctl play-pause && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $next)
        playerctl next && notify-send -u low -t 1800 " $(mpc current)"
        ;;
esac
