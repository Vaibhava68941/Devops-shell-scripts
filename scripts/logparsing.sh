#!/bin/bash

#This script is used to parse log files is system

log_file="/var/log/syslog"    
Keyword=ERROR

grep  $keyword $log_file > error_log.txt
echo "All ERROR entries saved to error_log.txt"
