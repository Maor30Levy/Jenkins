#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"
                    
echo "** Logging in ***"
docker login -u $REGISTER_USERNAME -p $PASS
echo "*** Pushing image ***"
docker push $REGISTER_USERNAME/$COMPONENT
rm -rf ./$COMPONENT
