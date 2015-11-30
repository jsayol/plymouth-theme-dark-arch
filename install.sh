#!/bin/bash

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

THEME='dark-arch'
INSTALLDIR=/usr/share/plymouth/themes

printf "Copying '${THEME}' theme files..."
mkdir -p ${INSTALLDIR}/${THEME}
cp -fr $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/* ${INSTALLDIR}/${THEME}
#install -Dm644 $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/* ${INSTALLDIR}/${THEME}
printf " DONE\n"

printf "Selecting '${THEME}' theme and updating initramfs...\n"
plymouth-set-default-theme -R ${THEME}
