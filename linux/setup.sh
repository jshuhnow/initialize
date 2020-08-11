#!/bin/bash

if [[ $(dpkg -l|grep xserver) ]]; then
	GUI_ON=true
else
	GUI_ON=false
fi

# Change the apt source
bash ./change-ubuntu-mirror.sh -k

apt update && apt upgrade -y
# Essential
apt-get install -y build-essential cmake git vim htop build-essential vim-nox tmux wireshark openssh-client openssh-server vsftpd xclip tree

# Python
apt-get install -y python2 python3 python-pip python3-pip virtualenv

if [ $GUI_ON ]; then
	# Bluetooth
	apt-get install -y blueman pavucontrol
	
	# Wallpaper
	apt-get install -y wallch

	# Gnome
	apt-get install -y gnome-tweaks gnome-shell-extensions
fi

# Fast Downloader
apt-get install -y aria2

# Shell
cp .bashrc ~

