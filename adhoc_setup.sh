#!/bin/sh

DEFAULT_INTERFACE="wlo1" #"wlx88d7f6a48aaa"
DEFAULT_IP="192.168.3.1/24"
DEFAULT_ESSID="adhoc-experiment"
DEFAULT_CHANNEL="11"

echo "Set up mode Ad-hoc.\n"
echo "--Default values.--"
echo "INTERFACE: $DEFAULT_INTERFACE"
echo "IP: $DEFAULT_IP"
echo "ESSID: $DEFAULT_ESSID"
echo "CHANNEL: $DEFAULT_CHANNEL"
echo "------------------\n"

echo -n "INTERFACE: "
read INTERFACE
if [ -z "$INTERFACE" ]; then
	INTERFACE=$DEFAULT_INTERFACE
fi

echo -n "IP: "
read IP
if [ -z "$IP" ]; then
	IP=$DEFAULT_IP
fi

echo -n "ESSID: "
read ESSID
if [ -z "$ESSID" ]; then
	ESSID=$DEFAULT_ESSID
fi

echo -n "CHANNEL: "
read CHANNEL
if [ -z "$CHANNEL" ]; then
	CHANNEL=$DEFAULT_CHANNEL
fi


# https://help.ubuntu.com/community/WifiDocs/Adhoc
sudo service network-manager stop
sudo ip link set $INTERFACE down

sudo iwconfig $INTERFACE mode ad-hoc
sudo iwconfig $INTERFACE channel $CHANNEL
sudo iwconfig $INTERFACE essid $ESSID
sudo iwconfig $INTERFACE key off

sudo ip link set $INTERFACE up
# sudo dhclient $INTERFACE
sudo ip addr add $IP dev $INTERFACE


echo "\n--Set up below.--"
echo "INTERFACE: $INTERFACE"
echo "IP: $IP"
echo "ESSID: $ESSID"
echo "CHANNEL: $CHANNEL"
echo "-----------------"
ip link show $INTERFACE



# https://ubuntuforums.org/showthread.php?t=2320018
# 
# $sudo -i
# $echo "options iwlwifi 11n_disable=8"  >>  /etc/modprobe.d/iwlwifi.conf
# $exit