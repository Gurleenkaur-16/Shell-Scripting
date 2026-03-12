#!/bin/bash

myvar="hey buddy, How are you ?"

myVarLength=${#myvar}
echo " Length of the myvar is $myVarLength"

echo " Upper case is -------${myvar^^}"

echo "Lower case is -------${myvar,,}"

#to replace a string

newvar=${myvar/buddy/anu}
echo " New var is ---$newvar"

#to slice a string 

echo " After slice ${myvar:4:5}"

