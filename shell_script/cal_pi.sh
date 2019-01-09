#!/bin/bash 
#Program:
#	this program can caculate pi value
echo -e "This script will calculate pi value. \n"
echo -e "You should input a float number to calculate pi value.\n"
read -p "The scale number (10~10000) ?" checking
number=${checking-"10"}
echo -e "\nStarting calculate pi value. Be paitent."
#4*a(1) is a function to calculate pi which bc offer
time echo "scale=${number} ; 4*a(1)" | bc -lq
