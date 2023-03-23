#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    apt-get install $1
  else
    echo "Already installed: ${1}"
  fi
}

install net-tools
install vim
install curl
install zsh
install openvpn
install git
