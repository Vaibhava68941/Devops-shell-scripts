#!/bin/bash
#Backup criticical files like /etc /home /user/
#date:15 May 2026

set -e -x

sources=("/etc" "/home/ubuntu/Shell_scripting_for_Devops" "/var/www/html" )
TIMESTAMP=$(date +%Y-%m-%d-%H%M%S)
backup_dir="/tmp/backup_files_$TIMESTAMP.tar.gz"

mkdir -p backup_dir
tar -czf "$backup_dir" "${sources[@]}"
echo "Backup completed successfully!"

