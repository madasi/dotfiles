#!/bin/bash

# pkill -f nm-applet
pkill -f networkd-notify
pkill -f variety
pkill -f solaar

# I don't use NetworkManger any longer
# # NetworkManager is the most popular way to manage wireless networks on Linux,
# # and nm-applet is a desktop environment-independent system tray GUI for it.
# # nm-applet &
# nm-applet --indicator &
networkd-notify &

# Backgrounds please
variety &

# Logitech Wireless device status/control
solaar -w hide &

