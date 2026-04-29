#1/bin/bash

server=ip-172-31-6-144.ap-south-1.compute.internal
if ping -c 1 "$server" &> /dev/null; then
     echo "Server '$server' is reachable " | tee  -a server_log.txt 
else
     echo "Server '$server is unreachable" | tee -a server_log.txt
     #sending alerts here
     echo "Alert server is down!" | mail -s "Alert:server is down" vaibhavkamble6496@gmail.com
fi

