#!/bin/bash
if [ $# ]
then
    if [ $1 = "1" ] 
    then
        sudo echo "22" > /sys/class/gpio/export
        sudo echo "out" > /sys/class/gpio/gpio22/direction
    elif [ $1 = "2" ]
    then
        sudo echo "23" > /sys/class/gpio/export
        sudo echo "out" > /sys/class/gpio/gpio23/direction
    elif [ $1 = "3" ]
    then
        sudo echo "24" > /sys/class/gpio/export
        sudo echo "out" > /sys/class/gpio/gpio24/direction
    elif [ $1 = "4" ]
    then
        sudo echo "27" > /sys/class/gpio/export
        sudo echo "out" > /sys/class/gpio/gpio27/direction
    else
        echo "Un-recognised parameter: $1"
    fi
else
    echo "Usage: relayon.sh 1"
fi