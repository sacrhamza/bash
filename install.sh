#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc ~/bashrc
fi

cp ./bashrc ~/.bashrc

cp ./alias.sh ~/.alias.sh

cp ./vimrc ~/.vimrc

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ ! -f ~/.tmux.conf ]]
then
	cp ./tmux.conf ~/.tmux.conf
fi

bash requirements.sh

cd .. && rm -rf bash

sudo vim /etc/ssh/sshd_config

sudo systemctl status ssh

sudo systemctl restart ssh

if [[ ! -z "$1" ]]
then
	sudo adduser "${1}"

	sudo usermod -aG sudo  "${1}"

	sudo hostname "${1}42"
fi

echo -e "\e[35m"'______________ ___ .___  _________ .___  _________ _____.___.________   ____ _____________   __      __________ __________.____     ________   
\__    ___/   |   \|   |/   _____/ |   |/   _____/ \__  |   |\_____  \ |    |   \______   \ /  \    /  \_____  \\______   \    |    \______ \  
  |    | /    ~    \   |\_____  \  |   |\_____  \   /   |   | /   |   \|    |   /|       _/ \   \/\/   //   |   \|       _/    |     |    |  \ 
  |    | \    Y    /   |/        \ |   |/        \  \____   |/    |    \    |  / |    |   \  \        //    |    \    |   \    |___  |    `   \
  |____|  \___|_  /|___/_______  / |___/_______  /  / ______|\_______  /______/  |____|_  /   \__/\  / \_______  /____|_  /_______ \/_______  /
                \/             \/              \/   \/               \/                 \/         \/          \/       \/        \/        \/'"\e[00m"

sleep 2

sudo ifconfig
bash
