#!/bin/bash

deps="
glibc
linux-api-headers
qt5-base
qt5-declarative
"

# That's scarry
# sudo pacman -S --noconfirm --overwrite \* $deps

# Let's not overwrite
# sudo pacman -S --noconfirm --overwrite \* $(echo "
sudo pacman -S --noconfirm $(echo "
locate
materia-kde kvantum-theme-materia
unclutter
zsh zsh-syntax-highlighting
")

yay_pkgs="
ocs-url
"

# Skipping
return 0

for pkg in $yay_pkgs; do
	if ! pacman -Qi $pkg >/dev/null; then
		yay -S --noconfirm ocs-url
	fi
done

# sudo pacman -R --noconfirm $deps
