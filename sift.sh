#!/bin/bash

first=$(echo $1 | head -c 1)
wget -O /tmp/package.deb http://ftp.us.debian.org/debian/pool/main/$first/$1/$2.deb
xdeb -Sde /tmp/package.deb
rm /tmp/package.deb
xbps-install -R binpkgs $2

echo "Done!"
