#!/bin/bash
#Program:
#	this program will tell you what to eat for lunch

eat[1]="bread"
eat[2]="meat"
eat[3]="rice"
eat[4]="nothing"

eatnum=4

check=$(( ${RANDOM} * ${eatnum} / 32767 + 1 ))
echo "your may eat ${eat[${check}]}"
