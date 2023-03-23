#!/bin/bash
sudo apt install curl 

sh -c "$(curl -fsLS get.chezmoi.io)"

chezmoi init --apply mkkbr