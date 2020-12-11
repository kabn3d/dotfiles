#!/bin/bash

sudo apt update
sudo apt upgrade

# install Guest Additions
sudo apt install gcc make perl linux-headers-$(uname -r)

yes | sudo apt install git
yes | sudo apt install vim
yes | sudo apt install zsh
yes | sudo apt install tmux

chsh -s $(which zsh)
