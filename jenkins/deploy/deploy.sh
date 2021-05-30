#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"
echo $PWD
ssh -T ec2-user@$VM_IP
