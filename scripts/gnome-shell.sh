#!/bin/bash

sudo apt-get install sassc inkscape

mkdir temp
cd temp

git clone https://github.com/jnsh/arc-theme --depth 1
cd arc-theme

meson setup --prefix=$HOME/.local -Dvariants=dark build/
meson install -C build/

cd ..

cd ..
rm -Rf temp
