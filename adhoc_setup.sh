#!/bin/sh
echo "Set up mode Ad-hoc.\n"

echo "INTERFACE: "
read INTERFACE

echo "IP: "
read IP

echo "ESSID: "
read ESSID

sudo service networking stop
sudo service network-manager stop
sudo iwconfig $INTERFACE mode ad-hoc
sudo iwconfig $INTERFACE essid $ESSID
sudo ip link set $INTERFACE up
sudo ip addr add $IP dev $INTERFACE

