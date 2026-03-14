#!/bin/bash

#function with arguments

addition() {
num1=$1
num2=$2
let sum=$num1+$num2
echo " sum of $num1 & $num2 is $sum"
}
addition 12 23 

