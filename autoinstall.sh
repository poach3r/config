#!/bin/bash

xbps-install --noconfirm i3 rofi dunst polybar firefox Thunar thunar-archive-plugin alacritty xarchiver lightdm lightdm-gtk3-greeter neofetch gcc gdb fish binutils tar curl xbps xz

git clone http://github.com/poach3r/config

git clone https://github.com/toluschr/xdeb

chmod -R +x ~/xdeb/

mv ~/xdeb/xdeb /usr/local/bin

chmod -R +x ~/config/polybar/

mv -i -f ~/config/* ~/.config/

clear

neofetch

echo "Rebooting in 5 seconds..."

sleep 5s

reboot