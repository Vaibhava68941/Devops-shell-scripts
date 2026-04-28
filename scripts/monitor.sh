#!/bin/bash

cpu_threshold=80
mem_threshold=80  

cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
mem_usage=$(free | grep  Mem | awk '{print $3/$2 * 100.0}')

if (( $(echo "cpu_usage" > "cpu_threshold" | bc -l) )) || (( $(echo "mem_usage" > "mem_threshold" | bc -l) )); then 
	echo "High CPU or memory usage detected!"
	echo "Your CPU and Memory had exceeded 80 percent" | mail -s "CPU usage alert $cpu_usage on $(hostname)" vaibhavkamble6496@gmail.com
fi 

