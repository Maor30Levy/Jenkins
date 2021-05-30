#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"
echo $REGISTER_USERNAME > /tmp/.project_name
echo $COMPONENT >> /tmp/.project_name
echo $PORT >> /tmp/.project_name
scp -T /tmp/.project_name ec2-user@$VM_IP:/tmp/.project_name
scp -T ./jenkins/deploy/publish ec2-user@$VM_IP:/tmp/publish
ssh -T ec2-user@$VM_IP "/tmp/publish"
