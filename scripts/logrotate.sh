#!/bin/bash

log_dir="/var/log/nginx/"
Archive_dir="/var/log/nginx/archive"
find $log_dir -name "*.log" -mtime +30 -exec mv {} $Archive_dir \;
gzip $Archive_dir/*.log
echo "Log files older than 30 days are archived and compressed!"
