#!/bin/bash
echo "this script will use touch commnad to create 1 file"
read -p "Please input your filname: " fileuser
test -z ${fileuser} && echo "you must iput a filename." && exit 0
#check if null input
filename=${fileuser:-"filename"}

date1=$(date --date='2 days ago' +%Y%m%d)

file1=${filename}${date1}

touch "${file1}"

#check file type and property

test -f ${file1} && filetype="regulare file"
test -d ${file1} && filetype="directory"
test -r ${file1} && perm="readable"
test -w ${file1} && perm="${perm} writable"
test -x ${file1} && perm="${perm} executable"

#print information about the file
echo "\nThe filename: ${file1} is a ${filetype}"
echo "And the permissions for you are : ${perm}"
