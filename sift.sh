#!/bin/bash

first=$(echo $1 | head -c 1)
url=http://ftp.us.debian.org/debian/pool/main/$first/$1/
w3m $url | grep .deb | awk '{ print$3 }'
read -p "Enter Package Name > " pacname
wget -O /tmp/package.deb $url/$pacname #| echo "Downloading Package..."
xdeb -Sde /tmp/package.deb
#echo $(xdeb -Sde /tmp/package.deb | awk '{print $7}' | tr -d '`' | sed 's/\`//g' | tail -n 1)
xbps-install -R binpkgs $(xdeb -Sde /tmp/package.deb | awk '{print $7}' | tr -d '`' | sed 's/\`//g' | tail -n 1)
rm /tmp/package.deb #| echo "Deleting Package..."

echo "Done!"
