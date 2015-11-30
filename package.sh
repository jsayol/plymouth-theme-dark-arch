#!/bin/bash

VERSION=20151130
ARCHIVEDIR=plymouth-theme-dark-arch

mkdir -p build
rm -rf build/*
cd build

mkdir ${ARCHIVEDIR}

cp ../*.plymouth ${ARCHIVEDIR}
cp ../*.script ${ARCHIVEDIR}
cp ../*.png ${ARCHIVEDIR}
#cp ../*.sh ${ARCHIVEDIR}
#cp ../README* ${ARCHIVEDIR}
cp ../LICENSE* ${ARCHIVEDIR}
#cp ../INSTALL* ${ARCHIVEDIR}

#rm -f ${ARCHIVEDIR}/package.sh

tar cvzf ${ARCHIVEDIR}_v${VERSION}.tar.gz ${ARCHIVEDIR}/

rm -rf ${ARCHIVEDIR}
