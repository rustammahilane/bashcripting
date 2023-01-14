#! /bin/bash

<<	 WIFI_TOGGLE
	This shell scripts toggles the wifi switch ON/OFF.

	Connections:
	to show network interface cards 
	$ ifconfig

	to turn ON or OFF
	$ nmcli radio wifi on/off

	to check status of network interface cards
	$ nmcli device status
	
	to scan available networks
	$ nmcli device wifi list
	or
	$ sudo iw wlan0 scan | grep SSID

	connecting
	$ nmcli --ask device wifi connect <SSID>
WIFI_TOGGLE

wi="nmcli radio wifi"

if wifi | grep "off" -w;
then
$wi on
else
$wi off
fi

wifi
