#!/bin/bash

# Fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/Hack.zip
unzip Hack.zip 
mv *.ttf /usr/share/fonts/
rm LICENSE.md
rm readme.md
rm Hack.zip

# RipGrep
sudo apt-get install -y ripgrep
