#!/bin/bash

git clone https://github.com/sacrhamza/bash bash_is_here

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc bashrc
fi

cp bash_is_here/bashrc ~/.bashrc

cp bash_is_here/alias.sh ~/.alias.sh

rm -rf bash_is_here

bash

