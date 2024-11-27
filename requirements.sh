#!/bin/bash

packages=(vim tmux git ssh apache2 hyperfine tldr yt-dlp ufw net-tools python3-pip btop htop finger hollywood)

for i in ${packages[@]}
do
	sudo apt install $i -y
done
