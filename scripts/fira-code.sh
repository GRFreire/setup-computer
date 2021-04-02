#!/bin/bash

mkdir temp
cd temp

FiraCodeVersion=$(curl --silent "https://api.github.com/repos/tonsky/FiraCode/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
FiraCodeZipName="Fira_Code_v$FiraCodeVersion.zip"

wget -c https://github.com/tonsky/FiraCode/releases/download/$FiraCodeVersion/$FiraCodeZipName
unzip $FiraCodeZipName -d FiraCode

sudo cp ./FiraCode/ttf/*.ttf /usr/local/share/fonts/
sudo fc-cache -f

cd ..
rm -Rf temp
