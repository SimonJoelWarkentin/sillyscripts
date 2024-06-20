#!/bin/bash

#this is just the first thing i always run when creating a server

echo starting
sleep 1
apt update -y

sleep 1
echo upgrading
apt upgrade -y

sleep 1
echo installing

#just the most important things to be installed, you know...
apt install neofetch neovim cmatrix tmux -y

clear
sleep 1
neofetch

sleep 1
echo ok
