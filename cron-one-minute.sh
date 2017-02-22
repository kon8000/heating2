logdate=$(date +%Y-%m-%d)
logfilepath="/home/pi/logs/$(date -d ${logdate} +%Y/%m)/"
templogfile="${logfilepath}temp$(date -d ${logdate} +%Y%m%d).log"
echo $templogfile
mkdir -p $logfilepath

temp_feed=$(/home/pi/temp.sh)

relay_state=$(/home/pi/heating_check.sh)

echo ${temp_feed}.${relay_state} >> $templogfile

exit 0
