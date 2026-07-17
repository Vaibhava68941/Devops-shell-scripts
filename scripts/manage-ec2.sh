#!/bin/bash
#date:11 May 2026  
set -euo pipefail
#

#AWS CLI configuration                                        
AWS_CLI_PATH="/usr/local/bin/aws"
AWS_REGION="ap-south-1"
AWS_PROFILE="default"

# EC2 instance IDs to stop and start
INSTANCE_IDS=("i-08606dbf869fcb940" "i-0ee073989ead1acd7")

#Function to stop EC2-instances
stop_instances() 
{
  echo "Stopping EC2 instances: ${INSTANCE_IDS[@]}"

  "$AWS_CLI_PATH" \
        --region "$AWS_REGION" \
        --profile "$AWS_PROFILE" \
        ec2 stop-instances \
        --instance-ids "${INSTANCE_IDS[@]}"

	if [ $? -eq 0 ]; then
	echo "EC2 instances stopped successfully..."
	else
	echo "Failed to stop EC2 instances"
  	fi    
}

#Function to start EC2-instances
start_instances() 
{
  # Get the current day of the week (0 = Sunday, 6 = Saturday)
  current_day=$(date +"%w")

  # Check if it's a Saturday or Sunday and exit the function
  if [ $current_day -eq 0 ] || [ $current_day -eq 6 ]; then
    echo "It's a weekend. EC2 instances will not be started."
    return
  fi

  echo "Starting EC2 instances: ${INSTANCE_IDS[@]}"
  "$AWS_CLI_PATH" \
        --region "$AWS_REGION" \
        --profile "$AWS_PROFILE" \
        ec2 start-instances \
        --instance-ids "${INSTANCE_IDS[@]}"
		
				
	if [ $? -eq 0 ]; then
	echo "EC2 instances started successfully."
	else
	echo "Failed to start EC2 instances"
	fi
 }

# Determine the current hour and minute
current_hour=$(date +"%H")
current_minute=$(date +"%M")


# Check the current time and take appropriate action
if [ ${current_hour} -eq 23 ] && [ ${current_minute} -eq 30 ]; then 
  stop_instances
elif [ ${current_hour} -eq 07 ] && [ ${current_minute} -eq 30 ]; then
  start_instances
fi


