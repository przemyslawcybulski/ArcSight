#!/bin/bash
# ---------------------------------------------------------------------- #
#    script arc-path.sh 
#    
#       author:  przemyslaw@cybulski.waw.pl
#         type:  bash script
#      version:  1.0
#
#    changeLog:
#                1.0   2020-04-08 cybulprz Initial release
#
# ---------------------------------------------------------------------- #

originaldate=$(date '+%Y%m')
path=/opt/scripts/test-date
getdate=$(cat $path | grep 3].folder=)
getdate2=${getdate#*/*/*/*/}
getdate3=${getdate2%/*}

if [ $originaldate = $getdate3 ]  
then
    echo ""
else
    sed -i "s/${getdate3}/${originaldate}/g" $path
    /etc/init.d/arc_nazwa_uslugi restart
fi
exit 0
