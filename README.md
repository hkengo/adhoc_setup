# adhoc_setup
## 環境
```
$ cat /etc/os-release
NAME="Ubuntu"
VERSION="16.04.3 LTS (Xenial Xerus)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 16.04.3 LTS"
VERSION_ID="16.04"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
VERSION_CODENAME=xenial
UBUNTU_CODENAME=xenial
```

## 概要
adhoc_setup.shはAd-hocモードを設定する．
```
sh adhoc_setup.sh
```

managed_setup.shはAd-hocモードを設定後に， Managedモードの設定に戻す．
```
sh managed_setup.sh
```
