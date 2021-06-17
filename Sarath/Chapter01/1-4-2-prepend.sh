#!/bin/bash
# Some thing wrong ,and I don`t anderstand the code.
# On page 12
prepend() { [ -d "$2" ] && eval $1=\"$2\$\{$1:+':'\$$1\}\" && echo $1 ;}
# "$2" same as $2

Path1=/root:/usr/bin
Path2=/var/www/blog
printf "Path1 is %s\nPath2 is %s\n" $Path1 $Path2
prepend Path1 Path2
echo $Path1
