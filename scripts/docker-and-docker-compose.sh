#!/bin/bash

sudo apt-get install docker.io -y
sudo usermod -aG docker $USER

mkdir temp
cd temp

DockerComposerVersion=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
sudo curl -L "https://github.com/docker/compose/releases/download/$DockerComposerVersion/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

cd ..
rm -Rf temp
