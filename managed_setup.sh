#!/bin/sh

DEFAULT_INTERFACE="wlx88d7f6a48aaa"

echo "Set up mode Managed.\n"
echo "--Default values.--"
echo "INTERFACE: $DEFAULT_INTERFACE"
echo "-------------------"

echo -n "INTERFACE: "
read INTERFACE
if [ -z "$INTERFACE" ]; then
	INTERFACE=$DEFAULT_INTERFACE
fi

sudo service networking start
sudo service network-manager start
sudo iwconfig $INTERFACE mode Managed