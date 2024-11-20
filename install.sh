#!/bin/bash

git clone https://github.com/sacrhamza/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc bashrc
fi

cp bash/bashrc ~/.bashrc

cp bash/alias.sh ~/.alias.sh

rm -rf bash

bash

