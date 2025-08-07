#!/bin/bash
IMAGE=$1
SERVICE=$2
PORT=$3

echo "Deploying $SERVICE on port $PORT"

docker pull $IMAGE:latest
docker stop $SERVICE || true
docker rm $SERVICE || true

docker run -d \
  --name $SERVICE \
  -p $PORT:80 \
  --restart always \
  $IMAGE:latest
