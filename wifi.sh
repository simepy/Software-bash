#!/bin/sh
## wifi.sh for wifi in /home/pera_s/test
## 
## Made by simon pera
## Login   <pera_s@epitech.net>
## 
## Started on  Tue Apr 12 18:19:35 2016 simon pera
## Last update Mon Apr 18 18:36:17 2016 simon pera

# mettre en root

while [ true ]
do
    ping -c 2 8.8.8.8
    if [ $? -ne 0 ]
    then
	echo "Restart Network Manager"
	systemctl restart NetworkManager.service
	sleep 23
    fi
    sleep 1
done
