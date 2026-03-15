#!/bin/bash

FILEPATH="/home/ubuntu/myscripts/test.cv"

if [[ -f $FILEPATH ]]
then
echo "File exists"
else
echo "File do not exists"
exit 1
fi

