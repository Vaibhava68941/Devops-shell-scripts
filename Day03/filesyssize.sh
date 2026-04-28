#!/bin/bash
#Print first large five files

echo "This script will show first 5 large files in path passed via positional arguments"
path="$1"    
echo $path    
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt 
echo "List of big files in filesystem $path"
cat /tmp/filesize.txt


