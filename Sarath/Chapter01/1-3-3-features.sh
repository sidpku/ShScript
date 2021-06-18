#!/bin/bash
var=MyName
length=${#var}
printf "var is %s\n" $var
printf "var's length is %d\n" $length

# check whether is root user
if [ $UID -ne 0 ]; then
		echo Non root user. Please run as root.
else
		echo Root user.
fi

# error at 0:1,why?
if  test $UID -ne 0:1
then
		echo Non root user. Please run as root.
else
		echo Root user.
fi
