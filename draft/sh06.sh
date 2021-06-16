#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/root/source

read -p "Please input (Y/N):" yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "OK, continue..."
	exit 0
fi

if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "Oh, interrupt!"
	exit 0
fi
echo 'I don`t know what your choice is ' && exit 0
