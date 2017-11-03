#!/bin/sh

cd /usr/src/rtl8812AU-4.3.14
sudo dkms status

DRV_NAME="rtl8812AU"
DRV_VERSION="4.3.14"

echo "DRV_NAME: ${DRV_NAME}"
echo "DRV_VERSION: ${DRV_VERSION}"
echo "Installing driver..."

sudo dkms remove -m $DRV_NAME -v $DRV_VERSION --all
sudo dkms add -m $DRV_NAME -v $DRV_VERSION
sudo dkms build -m $DRV_NAME -v $DRV_VERSION
sudo dkms install -m $DRV_NAME -v $DRV_VERSION

cd ~
