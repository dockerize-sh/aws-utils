#!/bin/bash

# This is script to create a user-data script
# which can be used as an init script 
# to automatically preload docker images on AWS EC2 instances from private docker registry on AWS ECR

# to use this script, configure aws cli using commmand "configure aws"  
# provide appropriate values for aws-availability-zone and your private docker container registry hosted on AWS ECR

echo “#!/bin/bash” > user_data.sh
echo “dlogin=’$(aws ecr get-login –region aws-availability-zone)'” >>  user_data.sh
echo “\$dlogin” >>  user_data.sh
echo “docker pull docker pull 3423353504321.dkr.ecr.us-east-1.amazonaws.com/mydockerepo:latest” >> user_data.sh
