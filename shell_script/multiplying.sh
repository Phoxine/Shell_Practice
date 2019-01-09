#!/bin/bash

echo -e "input 2 numbers, and this script will multiplying them"
read -p "first number: " first
read -p "second number:" second

echo -e "\nThe result of ${first} x ${second} is ==> $((${first}*${second}))"
