#!/bin/bash

./install.sh 
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# Fun hello
figlet "... and we're back!" | lolcat
