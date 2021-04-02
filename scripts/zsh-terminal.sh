#!/bin/bash

sudo apt-get install zsh -y

mkdir temp
cd temp

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s $(which zsh)

echo 'ZSH_THEME="spaceship"' >> /home/$USER/.zshrc

git clone https://github.com/dracula/gnome-terminal
./gnome-terminal/install.sh

cd ..
rm -Rf temp
