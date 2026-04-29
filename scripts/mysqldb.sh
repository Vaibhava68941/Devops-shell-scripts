#!/bin/bash

db_user="root"
db_password="Vaibhav@6496"
db_name="test"
backup_dir="/var/lib/mysql/test/"
timestamp=$(date +"%Y%m%d%H%M%S")
mysqldump -u "$db_user" -p"$db_pass" "$db_name" | gzip > "$backup_dir/db_backup_$timestamp.sql.gz"
