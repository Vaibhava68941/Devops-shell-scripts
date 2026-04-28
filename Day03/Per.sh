#!/bin/bash

chmod 764 test.txt

if [ $? -eq 0 ]; then
echo "Permissions for the file 'test.txt' set successfully"
else
echo "Failed to set Permissions for 'test.txt'"
fi

