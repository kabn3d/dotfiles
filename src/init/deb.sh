#!/bin/bash

sudo apt update
sudo apt upgrade

yes | sudo apt install git
yes | sudo apt install vim
yes | sudo apt install zsh
yes | sudo apt install tmux

chsh -s $(which zsh)
