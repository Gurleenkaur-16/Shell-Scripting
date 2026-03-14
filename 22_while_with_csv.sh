#!/bin/bash

#reasd csv file data using while loop

cat test.cv | awk 'NR!=1 {print}' |while IFS="," read id name age
do
echo "id is $id"
echo "name is $name"
echo "age is $age"
done 

