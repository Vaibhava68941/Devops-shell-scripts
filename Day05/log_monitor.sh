#!/bin/bash
#This script monitors system logs and reports error counts
#Date:4/05/2026

set -euo pipefail

Log_File="/var/log/syslog"
REPORT_File="/opt/daily_reports.txt"         
Error_threshold=2   

count_errors()
{
 grep "ERROR" "$Log_File" | wc -l
}    

generate_report()
{
	sudo echo "Log REPORT - $(date)" > "$REPORT_File"  
sudo echo "---------------------------" >> "$REPORT_File"
sudo grep "ERROR" "$Log_File" |  awk '{print $2}' | sort | uniq -c >> "$REPORT_File"
} 

Error_count=$(count_errors)
generate_report

#if Error is high then send alert here
if [ "$Error_count" -ge "$Error_threshold"  ]; then
echo "Alert:High error rate ($Error_count errors)" >> "$REPORT_File"
mail -s "High Error rate in logs!" "vaibhavkamble6496@gmail.com"
fi



