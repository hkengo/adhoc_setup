#!/bin/sh
echo "Set up mode Managed.\n"

echo "INTERFACE: "
read INTERFACE

sudo service networking start
sudo service network-manager start
sudo iwconfig $INTERFACE mode Managed