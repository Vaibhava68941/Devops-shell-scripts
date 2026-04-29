#!/bin/bash

if [ ! -f "test.txt" ]; then
echo "File not found."
exit 1
fi

sort -u test.txt > unique_data.txt

if [ $? -eq 0 ]; then
echo "Removed duplicated lines successfully.Result saved to unique_data.txt"
else
echo "Failed to remove duplicate lines."
fi
