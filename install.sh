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

bash

