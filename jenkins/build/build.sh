#!/bin/bash

echo "******************************"
echo "*** Building Docker Image ****"
echo "******************************"

git clone "https://github.com/Maor30Levy/$COMPONENT.git"
docker build -t $REGISTER_USERNAME/$COMPONENT -f ./$COMPONENT/Dockerfile ./$COMPONENT
