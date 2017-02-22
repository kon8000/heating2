#!/bin/bash
if [ $# ]
then
    if [ $1 = "1" ] 
    then
        echo "22" > /sys/class/gpio/unexport
    elif [ $1 = "2" ]
    then
        echo "23" > /sys/class/gpio/unexport
    elif [ $1 = "3" ]
    then
        echo "24" > /sys/class/gpio/unexport
    elif [ $1 = "4" ]
    then
        echo "27" > /sys/class/gpio/unexport
    else
        echo "Un-recognised parameter: $1"
    fi
else
    echo "Usage: relayoff.sh 1"
fi