#!/bin/bash

#For Loop with Array

myArray=( 1 2 3 four five )

length=${#myArray[*]}

for (( i=0;i<$length;i++))
do
echo "Value of array is ${myArray[$i]}"
done

