#!/bin/sh

DEFAULT_INTERFACE="wlx88d7f6a48aaa"
DEFAULT_IP="192.168.3.1/24"
DEFAULT_ESSID="adhoc-experiment"

echo "Set up mode Ad-hoc.\n"
echo "--Default values.--"
echo "INTERFACE: $DEFAULT_INTERFACE"
echo "IP: $DEFAULT_IP"
echo "ESSID: $DEFAULT_ESSID"
echo "------------------\n"

echo -n "INTERFACE: "
read INTERFACE
if [ -z "$INTERFACE" ]; then
	INTERFACE=DEFAULT_INTERFACE
fi

echo -n "IP: "
read IP
if [ -z "$IP" ]; then
	IP=DEFAULT_IP
fi

echo -n "ESSID: "
read ESSID
if [ -z "$ESSID" ]; then
	ESSID=DEFAULT_ESSID
fi

sudo service networking stop
sudo service network-manager stop
sudo iwconfig $INTERFACE mode ad-hoc
sudo iwconfig $INTERFACE essid $ESSID
sudo ip link set $INTERFACE up
sudo ip addr add $IP dev $INTERFACE

echo "\n--Set up below.--"
echo "INTERFACE: $INTERFACE"
echo "IP: $IP"
echo "ESSID: $ESSID"
echo "-----------------"

	