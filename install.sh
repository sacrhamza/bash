#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc bashrc
fi

cp bash/bashrc ~/.bashrc

cp bash/alias.sh ~/.alias.sh

bash requirements.sh

rm -rf bash

bash

