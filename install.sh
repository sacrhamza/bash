#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc bashrc
fi

cp ./bashrc ~/.bashrc

cp ./alias.sh ~/.alias.sh

bash requirements.sh

cd .. && rm -rf bash

bash

