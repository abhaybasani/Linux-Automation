#!/bin/bash
echo "For ON monitor Mode press 1: "
read num

#function
monitor(){
        ifconfig wlan0 down
        iwconfig wlan0 mode monitor
        ifconfig wlan0 up
        iwconfig
}


if [ $no -eq 1 ]
then
        echo "Switching to Monitor mode!!"
        monitor
else
        echo "Worng Input Good BYE Friend!!"
fi

