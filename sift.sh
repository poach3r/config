#!/bin/bash

xbps=$(xbps-install $1)

if [ "$xbps" == "Package '$1' not found in repository pool." ]
then
    first=$(echo $1 | head -c 1)
    wget http://ftp.us.debian.org/debian/pool/main/$first/$1/$2.deb
    xdeb -Sde ~/$2.deb
fi

echo "Done!"