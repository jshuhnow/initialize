#!/bin/bash

BASE_DIR=$(dirname "$0")

if [[ $(dpkg -l|grep xserver) ]]; then
	GUI_ON=true
else
	GUI_ON=false
fi

# Change the apt source
sudo $BASE_DIR/change-ubuntu-mirror.sh -k

sudo apt update && sudo apt upgrade -y

# Essential
sudo apt install -y build-essential cmake git vim htop build-essential vim-nox tmux wireshark openssh-client openssh-server vsftpd xclip tree

# Python
sudo apt install -y python2 python3 python3-pip python3-dev virtualenv

# TLDR
sudo apt install -y tldr

# fd-find
sudo apt install -y fd-find

# Ripgrep
sudo apt install -y ripgrep

# fzf
sudo apt install -y fzf

if [ $GUI_ON ]; then
	# Bluetooth
	sudo apt install -y blueman pavucontrol

	# Logitech
	sudo apt install -y solaar
	
	# Wallpaper
	sudo apt install -y wallch

	# Gnome
	sudo apt install -y gnome-tweaks gnome-shell-extensions
fi

# Fast Downloader
sudo apt install -y aria2

# DNS Utils
sudo apt install dnsutils

# Shell
sudo apt install -y zsh

# gcloud
$BASE_DIR/install_gcloud.sh

# Powerline Fonts
sudo apt-get install -y fonts-powerline

