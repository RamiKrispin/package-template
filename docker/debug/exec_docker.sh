#!/usr/bin/env bash
echo "Build the docker"

image_name=package_template_test
docker build . -t package_template_test

echo "Run the docker"

docker run -d package_template_test
docker ps
container_id=$(docker ps | awk '/package_template_test/ { print $1 }')
echo $container_id
docker exec -it $container_id   /bin/bash
docker kill $container_id