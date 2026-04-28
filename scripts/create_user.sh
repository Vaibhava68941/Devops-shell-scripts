#!/bin/bash

create_user()
{
read -p "Enter the username: " username
read -p "Enter the password: " password

if id "$username" &>/dev/null; then
echo "$username already exists!,exiting the code"
else
echo "The user $username does not exist and user will be created"
fi

sudo useradd -m $username -p $password

echo "user $username added successfully"
}
