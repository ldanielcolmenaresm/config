#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal

$HOME/.config/polybar/launch.sh &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

feh --bg-fill /usr/share/backgrounds/* &

xsetroot -cursor_name left_ptr &

run variety &
run nm-applet &
#udiskie -t &   enable for arch or dist core
numlockx on &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/libexec/polkit-gnome-authentication-agent-1 &
/usr/bin/dunst &
run volumeicon &
run parcellite &
run albert &
