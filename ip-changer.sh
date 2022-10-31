#!/bin/bash
#-------- how to change ip manualy ------
#ifconfig eth0 192.168.78.10
#----------------------------------------
# - -  - Start Script Here - - -  - -

echo "1.Enter your new IP Address: "
read ip
ifconfig eth0 $ip
#ifconfig | grep inet
ifconfig | grep $ip
