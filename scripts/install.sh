#!/bin/bash

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install net-tools
install vim
install curl
install zsh
install openvpn
install git
install exfat-utils
install btop
install bat
install exa

# unsnap
git clone https://github.com/popey/unsnap
cd unsnap
./unsnap auto

# install fonts
sudo mkdir /usr/local/share/fonts/ttf-byrr
sudo cp -a .fonts/* /usr/local/share/fonts/ttf-byrr/
sudo fc-cache -fv

# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y
