#!/bin/bash

echo test
docker pull $CONTAINER
docker stop flask
docker rm flask
docker run --name flask -d -p 80:80 $CONTAINER
