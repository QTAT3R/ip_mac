#!/bin/bash
#author		 github.com/retro-spoon
#description	 Script to automate changing mac and ip address	for desired interface
#		 Does not persist over reboot
#usage		 ./ip_mac.sh
#notes		 Requires macchanger and whiptail to use
int=$(whiptail --title "Interface" --inputbox "Enter the desired interface" 10 60 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	sudo ifconfig $int down
	sudo macchanger -b -r $int
	clear
	sudo ifconfig $int
	clear
	sudo dhclient -r $int
	clear
	sudo dhclient $int
	clear
	sudo ifconfig $int
	sudo macchanger -s $int

else
	clear
    echo "You chose Cancel."
fi
