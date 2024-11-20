#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc ~/bashrc
fi

cp ./bashrc ~/.bashrc

cp ./alias.sh ~/.alias.sh

bash requirements.sh

cd .. && rm -rf bash

sudo vim /etc/ssh/sshd_config

sudo systemctl status ssh

sudo systemctl restart ssh

ifconfig


echo "\e[36mYOU ARE WELCOM!!\n\e[00m\e[35mTHIS IS YOUR WORLD\n\e[00m"

sleep 2

bash
