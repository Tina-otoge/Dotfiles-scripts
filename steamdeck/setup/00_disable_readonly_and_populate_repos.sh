#!/bin/bash

sudo steamos-readonly disable

sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo
# Does not seem necessary
# sudo pacman-key -u

# Attempt at fixing broken signature on a package
# sudo pacman -Su
# sudo pacman -S --noconfirm --overwrite \* archlinux-keyring
# sudo /usr/bin/archlinux-keyring-wkd-sync || echo Done

# I finally gave up and just disabled sig checking
sudo sed -i 's/SigLevel    = .*/SigLevel    = Never/g' /etc/pacman.conf

# Not running if not needed
# sudo pacman -Sy
