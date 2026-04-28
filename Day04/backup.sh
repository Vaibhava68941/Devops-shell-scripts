#!/bin/bash
#Author:Vaibhav Kamble
#creating a backup of a folder
#Created Date:05 Feb 2026
#

echo "Hello, ${USER^}"
tar -cvf /home/ubuntu/Shell_scripting_for_Devops/Day04/my_backup_"$(date +%d-%m-%Y_%H-%M-%s)".tar /home/ubuntu/Shell_scripting_for_Devops/Day04/

exit 0
