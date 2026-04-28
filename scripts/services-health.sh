#!/bin/bash
#
#author:vaibhav kamble

services=("mysql" "ssh")
for service in "${services[@]}"; do
if systemctl is-active --quiet "$service"; then
   echo "Services $service is running."
else
   echo "Services $service is not running! restarting service"
          sudo systemctl start $service 
fi
done

