#!/bin/bash

#author:vaibhav kamble
#Date:27 April 2026
#This script installs new GIT version.

#sudo apt-get update -y || sudo apt-get upgrade -y
#echo "Updating the Packages"

#installing GIT
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get install git -y    

if [ $? -eq 0 ]; then
echo "Git latest version was installed successfully!"
else
echo "Failed to installed Git"
fi

