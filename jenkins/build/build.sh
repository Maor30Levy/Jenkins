#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

docker build -t $REGISTER_USERNAME/$COMPONENT -f ./$COMPONENT/Dockerfile ./$COMPONENT
