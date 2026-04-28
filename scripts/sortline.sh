#!/bin/bash

if [ ! -f "test.txt" ]; then
echo "Error: file 'test.txt' not found!"     
exit 1
fi

sort "test.txt" > "testoutput.txt"

mv "testoutput.txt" "test.txt"

echo "Lines in 'test.txt' sorted alphabetically successfully."




