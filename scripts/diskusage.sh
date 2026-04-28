#!/bin/bash

threshold=80
disk_usage=$(df -h | grep "/dev/root" | awk '{print $5}' | tr -d '%')

if [ "$disk_usage" > "$threshold" ]; then     
	echo "Disk space usage exceeded! $threshold%" | mail -s "disk usage alert on $(hostname)" vaibhavkamble6496@gmail.com
   #send alert here  
fi


