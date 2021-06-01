#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"
echo $REGISTER_USERNAME > /tmp/.project_name
echo $COMPONENT >> /tmp/.project_name
echo $PORT >> /tmp/.project_name
scp -T /tmp/.project_name $HOST_USERNAME@$HOST_IP:/tmp/.project_name
scp -T ./jenkins/deploy/publish $HOST_USERNAME@$HOST_IP:/tmp/publish
ssh -T $HOST_USERNAME@$HOST_IP "/tmp/publish"
