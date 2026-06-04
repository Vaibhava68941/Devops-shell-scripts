#!/bin/bash
#author:vaibhav kamble

echo "This script deletes old dependencies and installs new!"
sudo apt update -y && sudo apt upgrade -y && sudo apt autoclean -y 
echo "Successfully Deleted old packages and installed latest!"
