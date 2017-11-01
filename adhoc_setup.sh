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

echo -n "ESSID: "
read ESSID

sudo service networking stop
sudo service network-manager stop
sudo iwconfig $INTERFACE mode ad-hoc
sudo iwconfig $INTERFACE essid $ESSID
sudo ip link set $INTERFACE up
sudo ip addr add $IP dev $INTERFACE

	