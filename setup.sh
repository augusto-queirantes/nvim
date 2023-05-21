#!/bin/bash

# Fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/Hack.zip
unzip Hack.zip 
sudo mv *.ttf /usr/share/fonts/
sudo rm LICENSE.md
sudo rm readme.md
sudo rm Hack.zip

# Dependencies
sudo apt-get install -y ripgrep python3-venv fd-find software-properties-common python-dev python3-pip python3-dev python3-pip curl httpie

# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install 18
npm install -g typescript typescript-language-server neovim
