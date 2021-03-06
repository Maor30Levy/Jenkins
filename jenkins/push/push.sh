#!/bin/bash

echo "******************************"
echo "******* Pushing image ********"
echo "******************************"
                    
echo "** Logging in ***"
echo "$PASS" | docker login -u "$REGISTER_USERNAME" --password-stdin
echo "*** Pushing image ***"
docker push $REGISTER_USERNAME/$COMPONENT

echo "*** Removing repo from Jenkins ***"
rm -rf ./$COMPONENT
