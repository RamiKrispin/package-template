#!/usr/bin/env bash
tag='0.1.0'
echo "\033[0;92mStart to build the docker"
echo "\033[0;92mTag: $tag"

docker build . -t rkrispin/package_template_prod:$tag

# Pushing the docker to Docker Hub
# Use "docker login" to login to your account 
if [[ $? = 0 ]] ; then
echo "\033[0;92mPushing docker..."
docker push rkrispin/package_template_prod:$tag
else
echo "\033[0;91mmDocker build failed"
fi