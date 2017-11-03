#!/bin/sh

echo "Set up mode Ad-hoc.\n"
echo "--Example below.--"
echo "INTERFACE: wlx2c4d5406bbe4"
echo "IP: 192.168.3.4/24"
echo "ESSID: adhoc-network"
echo "------------------\n"

echo -n "INTERFACE: "
read INTERFACE

echo -n "IP: "
read IP
if [ -z "$IP" ]; then
	IP="192.168.3.4/24"
fi

echo -n "ESSID: "
read ESSID
if [ -z "$ESSID" ]; then
	ESSID="adhoc-network"
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

	