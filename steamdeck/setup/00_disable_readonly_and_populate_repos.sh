#!/bin/bash

sudo steamos-readonly disable

sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo
sudo pacman-key -u
sudo pacman -Su
sudo pacman -S --noconfirm --overwrite \* archlinux-keyring
sudo /usr/bin/archlinux-keyring-wkd-sync || echo Done
sudo sed -i 's/SigLevel    = .*/SigLevel    = Never/g' /etc/pacman.conf
