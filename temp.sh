#! /bin/bash
sudo modprobe w1-gpio
sudo modprobe w1-therm
str_roomtemp_1=$(cat /sys/bus/w1/devices/28-011562b226ff/w1_slave | grep -E -o ".{0,0}t=.{0,5}" | cut -c 3-)
str_roomtemp_2=$(cat /sys/bus/w1/devices/28-011562b276ff/w1_slave | grep -E -o ".{0,0}t=.{0,5}" | cut -c 3-)
str_date=$(date +"%Y-%m-%d %H-%M-%S")
echo "$str_date | $str_roomtemp_1 | $str_roomtemp_2 |"
