#!/bin/bash

sort temp.txt > sorted_data.txt

if [ $? -eq 0 ]; then
echo "Lines sorted successfully.Sorted data to 'sorted_data.txt'."
else
echo "Failed to sort data."
fi

