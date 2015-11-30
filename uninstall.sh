#!/bin/bash

THEME='dark-arch'
INSTALLDIR=/usr/share/plymouth/themes

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

printf "Removing '${THEME}' theme files..."
rm -rf ${INSTALLDIR}/${THEME}
printf " DONE\n"

printf "Selecting default theme..."
plymouth-set-default-theme -r
printf "......... DONE\n"

printf "Updating initramfs...\n"
mkinitcpio -p linux
printf "DONE\n"
