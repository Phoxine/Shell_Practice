#!/bin/bash

echo "This program let you input a number, and it will calculate the sum from 0 to input\n"
read -p "intput a number: " last

s=0
i=0

while [ "${i}" != "${last}" ]
do
	i=$((${i}+1))
	s=$((${s}+${i}))
done
echo "The result of '1+2+3+.....${last}' is ==> ${s}"
