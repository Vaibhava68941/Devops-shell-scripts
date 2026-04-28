#!/bin/bash

service="nginx"  
if systemctl is-active --quiet "$service"; then
    echo "$(date): service $service is running!"
else
    echo "$(date):Service $service is not running! starting service"
    sudo systemctl start $service
fi

