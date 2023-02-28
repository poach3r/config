#!/bin/bash

first=$(echo $1 | head -c 1)
wget http://ftp.us.debian.org/debian/pool/main/$first/$1/$2.deb
xdeb -Sde ~/$2.deb
rm -rf ~/$2.deb
xbps-install -R binpkgs $2

echo "Done!"