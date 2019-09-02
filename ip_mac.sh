#!/bin/bash
#author		 QTAT3R
#description	 Script to auto change mac and ip address
#		   for interface wlan0
#		     Does not persist over reboot
#usage		 ./ip_mac.sh
#notes		 Install macchanger to use
sudo ifconfig wlan0 down
sudo macchanger -b -r wlan0
sudo ifconfig wlan0 up
sudo dhclient -r wlan0
sudo dhclient wlan0
clear
sudo ifconfig wlan0
sudo macchanger -s wlan0
