#!/bin/bash

myArray=(1 20 30.5 hello "hello buddy")
echo " Value in 3rd index is  ${myArray[3]}"

echo " All the value in array are ${myArray[*]}"

echo " Length of the array is ${#myArray[*]}"

echo "VAlue from index 0 is ${myArray[*]:1}"

echo "Value from index 1 upto 2 values are ${myArray[*]:1:2}"

echo "VAlue from index 0 is ${myArray[*]:2}"

myArray+=(new 4 7)

echo "Value of new array is ${myArray[*]}"

declare -A info
info=([name]=Gurleen [age]=22)

echo "Name is ${info[name]}"

