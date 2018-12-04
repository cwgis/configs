#!/bin/bash

password="password"
pname="AppleSpell"

pid=$(ps -e | grep $pname | grep -v grep | awk '{printf $1}')

if [ $? -eq 0 ]; then
    echo "process id:$pid"
else
    echo "process $pname not exit"
    exit
fi

echo "$password" | sudo -S kill -9 ${pid}

if [ $? -eq 0 ];then
    echo "kill $pname success"
else
    echo "kill $pname fail"
fi