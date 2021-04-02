#!/bin/bash

mkdir temp
cd temp

PaperIconsDownloadFile="download.php?owner=snwh&ppa=ppa&pkg=paper-icon-theme,18.04"
PaperIconsDebName="PaperIcons.deb"
PaperIconsFolder="PaperIcons"

wget https://snwh.org/paper/$PaperIconsDownloadFile
mv $PaperIconsDownloadFile $PaperIconsDebName

mkdir $PaperIconsFolder
dpkg-deb --extract $PaperIconsDebName $PaperIconsFolder

mkdir /home/$USER/.icons
cp -r $PaperIconsFolder/usr/share/icons/Paper /home/$USER/.icons/Paper

gsettings set org.gnome.desktop.interface icon-theme 'Paper'

cd ..
rm -Rf temp
