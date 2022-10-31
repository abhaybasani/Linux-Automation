#!/bin/bash
#------How to do this manually-------
#ifconfig eth0 down
#---   hw = hardware
#ifconfig eth0 hw ether 00:1a:02:41:45:b2
#ifconfig eth0up
#------------------------------------------

# Script Start Here
echo "1. Enter your new MAC Address: "
read mac
ifconfig eth0 down
ifconfig eth0 hw ether $mac
ifconfig eth0 up

#--- run 2nd time if it not work ---

ifconfig eth0 down
ifconfig eth0 hw ether $mac
ifconfig eth0 up
ifconfig



