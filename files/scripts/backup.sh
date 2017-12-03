#!/bin/bash

HOST1="ppagent2.netico.pl"
HOST2="strange.netico.pl"

D=`/bin/date +%d`
M=`/bin/date +%m`
Y=`/bin/date +%y`


HOST=`echo $HOST1 | cut -d '.' -f 1`
DATE="20$Y.$M.$D"

PATH="/bkp/20$Y/$M"
/usr/bin/mkdir -p $PATH
PATH2="/media/bkp/$HOST"


FILES="/var/wwww/example1"

/bin/tar -cvf    $PATH/$DATE-backup-cf.tar  $FILES
/usr/bin/lzma -9 $PATH/$DATE-backup-cf.tar
/usr/bin/scp     $PATH/$DATE-backup-cf.tar.lzma $HOST2:$PATH2
