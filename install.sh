#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc ~/bashrc
fi

cp ./bashrc ~/.bashrc

cp ./alias.sh ~/.alias.sh

cp ./vimrc ~/.vimrc

bash requirements.sh

cd .. && rm -rf bash

sudo vim /etc/ssh/sshd_config

sudo systemctl status ssh

sudo systemctl restart ssh

if [[ ! -z "$1" ]]
then
	sudo adduser "${1}"

	sudo usermod -aG sudo  "${1}"

	hostname "${1}42"
fi

echo -e "\e[36mYOU ARE WELCOM!!\n\e[00m\e[35mTHIS IS YOUR WORLD\n\e[00m"

sleep 2

sudo ifconfig
bash
