#!/bin/bash

docker pull $CONTAINER
docker stop flask
docker rm flask
docker run --name flask -d -p 80:80 --link db:db -e "DB_URI=postgresql://docker:docker@db:5432" $CONTAINER
