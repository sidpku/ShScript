#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/root/source

read -p "Please input (y/n):" yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "Ok, continue..."
	exit 0
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "Oh, interrupt!"
	exit 0
else
	echo 'I don`t know what to do!'
	exit 0
fi

