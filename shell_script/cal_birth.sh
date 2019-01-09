#!/bin/bash
#Program:
#	Input birthday, and this script will calculate how many days before your#	birthday is coming.

echo "This script will try to calculate"
echo -e "\thow many days before your birthday...\n"
read -p "Please input your birthday (YYYYMMDD ex>20190130): " date2

#check input is ok or wrong
date_d=$(echo ${date2} | grep '[0-9]\{8\}') #check 8 numbers
if [ "${date_d}" == "" ]; then
	echo "you input the wrong date format..."
	exit 1
fi

#calculate date
declare -i date_dem=$(date --date="${date2}" +%s)
declare -i date_now=$(date +%s)
declare -i date_total_s=$((${date_dem}-${date_now}))
declare -i date_d=$((${date_total_s}/60/60/24))
if [ "${date_total_s}" -lt "0" ]; then
	echo "You had passed your birthday before: " $((-1*${date_d})) "days ago"
else
	declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60))
	echo "Your nirthday will be coming in ${date_d} days and ${date_h} hours."
fi
