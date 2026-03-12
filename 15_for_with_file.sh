#!/bin/bash

#Getting Value from file 

file="/home/ubuntu/myscripts/forts_in_jaipur.txt"

for name in $(cat $file)
do 
echo "Forts name is $name"
done

