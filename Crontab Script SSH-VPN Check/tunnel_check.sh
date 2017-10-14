#!/bin/sh
# Filename: tunnel_check.sh
# Author: Jason Campisi 10/7/17
# Released under the GPL 3 or higher
# Purpose: check to see if there is both 
#    a ssh tunnel to tunnelr & VPN connection, 
#    and if not, kill program if it is running.
# How to use it with cron on *nix systems: written for crontab. run the commands
#     Edit the SERVICE name and PROGRAM name
#	  sudo mv ./tunnel_check.sh /opt/local/bin/
#     crontab -e
#     * * * * * /bin/bash /opt/local/bin/tunnel_check.sh > /dev/null

SERVICE='vpn/ssh-service-name-here'
PROGRAM='program-Name-Here'
PS='ps x'
VPN='/usr/sbin/scutil --nc list'

if $VPN | grep "Connected" > /dev/null && $PS | grep -i $SERVICE | grep -v "grep" > /dev/null
  then
	echo "$SERVICE SSH & VPN connection is open!"
	exit
else 
	echo "$SERVICE VPN &/or SSH tunnel is NOT on.\n-->Checking to see if $PROGRAM is running!"
    if $PS | grep -i $PROGRAM | grep -v "grep" > /dev/null
    then 
    	echo "-->Killing $PROGRAM"
    	$PS | grep -i $PROGRAM | grep -v "grep" | awk '{print $1}' |xargs kill -9 >/dev/null
    else
    	echo "-->$PROGRAM is not running!"
    fi
fi