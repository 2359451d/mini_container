#!/bin/bash
port=${1}:8080
src=${2}:/usr/local/tomcat/webapps #volume path
container_name=${3}
img_name=${4}
echo ${port}
query=$(docker ps -a | grep "$container_name")
if [ -n "$query" ]
then
  docker rm -f "$container_name"
  echo "old container removed"
fi
docker run -p ${port} -v ${src} --name ${container_name} -d ${img_name}
docker ps