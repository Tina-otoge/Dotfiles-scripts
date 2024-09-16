#!/bin/bash

# flatpak remote-delete --system flathub
# flatpak remote-delete --system flathub-beta 

flatpaks="
org.mozilla.firefox
org.gtk.Gtk3theme.Materia
"

for flatpak in $flatpaks; do
	flatpak install --user $flatpak
done
