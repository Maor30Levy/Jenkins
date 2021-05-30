#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"
ssh -T ec2-user@$VM_IP './jenkins/deploy/publish.sh'
