#!/bin/bash
#author		   github.com/retro-spoon
#description	 Script to automate changing mac and ip address
#		   			for desired interface
#		     		Does not persist over reboot
#usage		 ./ip_mac.sh
#notes		 Install macchanger to use
echo Enter desired interface
read int
sudo ifconfig $int down
sudo macchanger -b -r $int
sudo ifconfig $int
sudo dhclient -r $int
sudo dhclient $int
clear
sudo ifconfig $int
sudo macchanger -s $int
