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

	sudo hostname "${1}42"
fi

echo -e "\e[36m               __                            __  .__    .__         .__                                                          .__       .___
__  _  __ ____ |  | __ ____  ____   _____   _/  |_|  |__ |__| ______ |__| ______  ___.__. ____  __ _________  __  _  _____________|  |    __| _/
\ \/ \/ // __ \|  |/ // ___\/  _ \ /     \  \   __\  |  \|  |/  ___/ |  |/  ___/ <   |  |/  _ \|  |  \_  __ \ \ \/ \/ /  _ \_  __ \  |   / __ | 
 \     /\  ___/|    <\  \__(  <_> )  Y Y  \  |  | |   Y  \  |\___ \  |  |\___ \   \___  (  <_> )  |  /|  | \/  \     (  <_> )  | \/  |__/ /_/ | 
  \/\_/  \___  >__|_ \\___  >____/|__|_|  /  |__| |___|  /__/____  > |__/____  >  / ____|\____/|____/ |__|      \/\_/ \____/|__|  |____/\____ | 
             \/     \/    \/            \/             \/        \/          \/   \/                                                         \/ \n\e[00m\e[35mTHIS IS YOUR WORLD\n\e[00m"

sleep 2

sudo ifconfig
bash
