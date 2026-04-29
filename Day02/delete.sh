#!/bin/bash

if [ -f "output.txt" ]; then	
	rm output.txt

if [ $? -eq 0 ];then
echo "File 'output.txt' deleted successfully"
else
echo "failed to delete file 'Output.txt'"
fi
else    
echo "File 'output.txt' does not exist"
fi

