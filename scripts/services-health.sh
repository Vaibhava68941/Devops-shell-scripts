#!/bin/bash
#date:29 April 2026 
#author:vaibhav kamble 
#Script to check Mysql and SSH services are up

services=("mysql" "ssh")
for service in "${services[@]}"; do
if systemctl is-active --quiet "$service"; then
   echo "Services $service is running."
else
   echo "Services $service is not running! restarting service"
          sudo systemctl start $service 
fi
done

