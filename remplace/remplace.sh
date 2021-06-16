#!/bin/bash
remplace()
{
# sed "/$1/D" run.def > r2
# cat <<END >>r2 
# $1=$2 
# END
# mv r2 run.def
sed -i "/$1/c $1=$2" ./text 
}

remplace 4 15
