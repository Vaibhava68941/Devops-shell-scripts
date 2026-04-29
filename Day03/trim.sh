#!/bin/bash

if [ ! -f "temp.txt" ]; then
echo "File does not exist"
exit 1
fi

awk '{$1=$1};1' temp.txt > trim_temp.txt
mv trim_temp.txt temp.txt       

if [ $? -eq 0 ]; then
echo "trimmed whitespaces from 'temp.txt' successfully!"
else
echo "Failed to trim whitespaces in temp.txt"
fi



