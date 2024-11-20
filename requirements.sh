#!/bin/bash

packages=(sudo tmux git ssh apache2 hyperfine tldr yt-dlp ufw net-tools python3-pip btop htop finger hollywood)

for i in ${packages[@]}
do
	if [[ -z $(which $i) ]]
	then
		echo $i
		echo hey hey hey hey 
		sleep 4
		sudo apt install $i -y
	fi
done
