#!/bin/bash 

for file in *; do
if [ -f "$file" ] && [ $(stat -c %s "$file") -gt 1024 ]; then
echo "$file"
fi
done
