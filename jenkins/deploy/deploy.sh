#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"
sudo su - jenkins
ssh -T ec2-user@$VM_IP
