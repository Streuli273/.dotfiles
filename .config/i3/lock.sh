#!/bin/bash
xwobf /tmp/i3lock.png
convert /tmp/i3lock.png ~/.config/i3/lock.png -gravity center -composite -matte /tmp/i3lock.png
pkill i3lock
i3lock -i /tmp/i3lock.png
rm /tmp/i3lock.png
