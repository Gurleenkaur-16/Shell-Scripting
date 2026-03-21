#!/bin/bash

#monitoring free dish space 

FU=$(df -H | egrep -v "tmpfs" | grep "xvda16" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]]
then 
echo " Warning disk space is low - $FU % "
else
echo " Enough space "
fi

