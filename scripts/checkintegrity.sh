#!/bin/bash

file=/home/ubuntu/Shell_scripting_for_Devops/scripts/server_log.txt
checksum=$(md5sum "$file" | awk '{print $1}')
if [ "$checksum" == c1b06c952b67cd50828236437971b595 ]; then
    echo "File integrity verified!"
else
    echo "File integrity compromised"
fi
