#!/bin/bash
systemctl disable NetworkManager
ip link set wlan0 down
ip link set wlan0 name wlan0mon
systemctl enable NetworkManager
ip link set wlan0mon up