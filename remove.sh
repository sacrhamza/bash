#!/bin/bash
sudo apt purge sudo
sudo apt update && sudo apt upgrade
sudo apt purge tmux git ssh apache2 hyperfine tldr yt-dlp ufw net-tools python3-pip
sudo apt purge finger
mv ~/bashrc ~/.bashrc
rm -rf ~/.alias.sh
