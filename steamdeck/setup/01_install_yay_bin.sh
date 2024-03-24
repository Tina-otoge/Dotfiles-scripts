#!/bin/bash

if command -v yay; then
	return 0
fi

# Skipping yay install
return 0

# sudo pacman -S --noconfirm --needed --overwrite \* git base-devel
sudo pacman -S base-devel
(
	cd /tmp
	git clone https://aur.archlinux.org/yay-bin.git
	cd yay-bin
	makepkg -si --noconfirm
)

yay --save --answerclean All --answerdiff None --answeredit None
