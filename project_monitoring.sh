#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=300

if [[ $FREE_SPACE -lt $TH ]]
then
echo "WARNING, RAM is running low"
else
echo "RAM SPACE is sufficient - $FREE_SPACE M"
fi

