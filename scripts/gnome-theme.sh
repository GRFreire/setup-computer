#!/bin/bash

mkdir temp
cd temp

git clone https://github.com/daniruiz/flat-remix-gtk

cp -r flat-remix-gtk/Flat-Remix-GTK-Blue-Dark /home/$USER/.themes/

gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark"

cd ..
rm -Rf temp
