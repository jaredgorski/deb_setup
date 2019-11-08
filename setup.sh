#!/bin/bash

set -ex

sudo ip link set wlp3s0 up
sudo ifup wlp3s0
sudo apt-get install xorg firefox-esr vim git
sudo apt install aptitude
sudo aptitude install dwm suckless-tools
echo "exec dwm" > ~/.xinitrc
echo "cat /sys/class/power_supply/BAT0/capacity" > ~/battery_level.sh
mkdir -p ~/Projects/local_clones
cd ~/Projects/local_clones && git clone https://github.com/jaredgorski/SpaceCamp.git
mkdir -p ~/.vim/colors
mv ./SpaceCamp/colors/spacecamp.vim ~/.vim/colors/
