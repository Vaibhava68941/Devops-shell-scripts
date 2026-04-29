#!/bin/bash

if [ ! -f "temp.txt" ]; then
echo "File 'temp.txt' not found"
      exit 1
fi

insert_text="New Text:  "   

sed "s/^/$insert_text/" temp.txt > temp_with_insert.txt

mv temp_with_insert.txt temp.txt

if [ $? -eq 0 ]; then
echo "Text inserted at the beginning of 'temp.txt' file"
else  
echo "Failed to insert text at the beginning of 'temp.txt'file. "
fi



