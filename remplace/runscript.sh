#!/bin/bash
#set -vx

remplace()
{
sed "/$1/D" run.def > r2
cat <<END >>r2 
$1=$2 
END
mv r2 run.def
}



YEAR=2007

while [ $YEAR -le 2009 ] ; do

    if [ $YEAR -eq 2007 ] ; then
	
	remplace RESTART_FILEIN NONE
        remplace SECHIBA_restart_in NONE
        remplace STOMATE_RESTART_FILEIN NONE
    else
	remplace RESTART_FILEIN driver_start.nc
        remplace SECHIBA_restart_in sechiba_start.nc
        remplace STOMATE_RESTART_FILEIN stomate_start.nc
    fi

    remplace FORCING_FILE  /workdir/lsm_course/xwang/testAgFACE/AgFACEwhe_${YEAR}.nc

    ./orchidee_ol  > out_text_${YEAR}
    cp run.def run.def_${YEAR}

    mv stomate_restart.nc stomate_start.nc
    mv sechiba_restart.nc sechiba_start.nc
    mv driver_restart.nc driver_start.nc

    mv stomate_history_0000.nc sto_${YEAR}.nc
    mv sechiba_history_0000.nc sec_${YEAR}.nc

    let YEAR=YEAR+1
done
