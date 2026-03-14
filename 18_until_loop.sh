#!/bin/bash

#Until Loop

a=10
until [[ $a -eq 1 ]]
do
echo " value of a ia $a "
let a--
done 

