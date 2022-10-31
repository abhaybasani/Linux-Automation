#!/bin/bash

echo "Enter your Victim IP?: "
read ip

echo "Enter port limit ex: 1-10, 1-1000: "
read port

echo "Select a Scan \n 1.For Aggresive \n 2.For syn \n 3. For TCP"
read st

if [ $st -eq 1 ]
then
        nmap -A $ip -p $port | grep open
elif [ $st -eq 2 ]
then
        nmap -sS -O -sV $ip -p $port | grep open
elif [ $st -eq 3 ]
then
        nmap -sT -O -sV $ip -p $port | grep open
fi


