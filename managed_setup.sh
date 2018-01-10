#!/bin/sh

DEFAULT_INTERFACE="wlo1" #"wlx88d7f6a48aaa"

echo "Set up mode Managed.\n"
echo "--Default values.--"
echo "INTERFACE: $DEFAULT_INTERFACE"
echo "-------------------"

echo -n "INTERFACE: "
read INTERFACE
if [ -z "$INTERFACE" ]; then
	INTERFACE=$DEFAULT_INTERFACE
fi

# sudo ip addr flush $DEFAULT_INTERFACE 

sudo ip link set $INTERFACE down

sudo iwconfig $INTERFACE mode Managed

sudo ip link set $INTERFACE up
sudo ip addr add $IP dev $INTERFACE
sudo service network-manager start
# sudo service networking start