#!/bin/bash
#Reminder of a given argument
#__author__: hAwAii_2.0
#
#reminder.sh <title> <content>
#into .bashrc for persistence

if [ $# -lt 2 ]
then
    echo "USAGE: $0 {NOTIFICATION_TITLE} {NOTIFICATION_CONTENT}"
else
    numProcessRunning=$(ps -a | grep reminder | wc -l)
    if [ $numProcessRunning -le 2 ]
    then
        while true
        do
            currentTime=`date +%T`
            if [ "$currentTime" = "17:00:00" ]
            then
                i=0
                while [ $i -le 5 ];
                do
                    notify-send "$1" "$2" -u critical
                    sleep 5
                    i=$(($i + 1))
                done
            fi
        done
    fi
fi