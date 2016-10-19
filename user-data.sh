#!/bin/bash
echo “#!/bin/bash” > user_data.sh
echo “dlogin=’$(aws ecr get-login –region aws-availability-zone)'” >>  user_data.sh
echo “\$dlogin” >>  user_data.sh
echo “docker pull 5docker pull 3423353504321.dkr.ecr.us-east-1.amazonaws.com/mydockerepo:latest” >> user_data.sh
