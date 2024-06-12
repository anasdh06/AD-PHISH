#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export ZPHISHER_ROOT="/data/data/com.termux/files/usr/opt/AD-PHISH"
else
	export ZPHISHER_ROOT="/usr/opt/AD-PHISH"
fi

cd $ZPHISHER_ROOT
bash ./adphish.sh
